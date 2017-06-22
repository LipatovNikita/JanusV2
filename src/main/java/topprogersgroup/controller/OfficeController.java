package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.*;
import topprogersgroup.service.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/office")
public class OfficeController {

    //Возможные статусы REJECTED, CREATED, PROCESSED, ACCEPTED, APPROVED

    private final String BID_CREATED = "CREATED";
    private final String BID_PROCESSED = "PROCESSED";
    private final String BID_REJECTED = "REJECTED";

    @Autowired
    CurrentUserService userService;
    @Autowired
    PetService petService;
    @Autowired
    RouteService routeService;
    @Autowired
    BidService bidService;
    @Autowired
    OwnerService ownerService;

    @RequestMapping(value = {"", "/","/home"}, method = RequestMethod.GET)
    public String home(Model model) {
        return "/office/home";
    }

    //Все петомцы
    @RequestMapping(value = "/pets", method = RequestMethod.GET)
    public String getAllPetsPage(Model model,
                                 @AuthenticationPrincipal User user) {
        Owner owner = ownerService.findOwnerByEmailUser(userService.getUserEmail());
        List<Pet> pets = owner.getPet();
        UploadImage uploadImage = (UploadImage) pets.get(0).getPassport().getImages().toArray()[0];
        model.addAttribute("pets", pets);
        model.addAttribute("images", uploadImage.getPath());
        return "/office/pets";
    }

    //Страница пета
    //Запретить смотреть чужих петов
    @PreAuthorize("@currentUserServiceImpl.canAccessOwnerPets(principal, #idPet)")
    @RequestMapping(value = "/pets/{idPet}", method = RequestMethod.GET)
    public String getPetPage(Model model,
                             @PathVariable Integer idPet) {
        Pet pet = petService.findOne(idPet);

        Passport passport = pet.getPassport();
        model.addAttribute("pet", pet);
        model.addAttribute("passport", passport);
        model.addAttribute("owner", passport.getOwner());
        model.addAttribute("vaccinationList", passport.getVaccination());
        model.addAttribute("immunizationList", passport.getImmunizationDeworming());
        model.addAttribute("quarantine",pet.getQuarantine());
        UploadImage uploadImage = (UploadImage) pet.getPassport().getImages().toArray()[0];
        model.addAttribute("image", uploadImage.getPath());
        return "/office/pet";
    }

    //Все заявки
    @RequestMapping(value = "/bids", method = RequestMethod.GET)
    public String getBidPage(Model model) {
        List<Bid> bidList = bidService.findByEmailUser(userService.getUserEmail(),false);
        model.addAttribute("bidList", bidList);
        return "/office/bids";
    }

    //Просмотр заявки
    @PreAuthorize("@currentUserServiceImpl.canAccessOwnerBids(principal, #idBid)")
    @RequestMapping(value = "/bids/{idBid}/preview", method = RequestMethod.POST)
    public String previewBid(Model model,
                             @PathVariable Integer idBid) {
        Bid bid = bidService.findOne(idBid);
        model.addAttribute("bid", bid);
        model.addAttribute("route",bid.getRoute());
        model.addAttribute("petList",bid.getPets());
        return "/office/bid";
    }

    @RequestMapping(value = "/bids/create", method = RequestMethod.GET)
    public String createBid(Model model) {
        Route route = new Route();
        Bid bid = new Bid();
        Owner owner = ownerService.findOwnerByEmailUser(userService.getUserEmail());
        List<Pet> pets = owner.getPet();
        model.addAttribute("pets", pets);
        model.addAttribute("route", route);
        model.addAttribute("bid", bid);
        return "/office/create";
    }

    //Заявка создается со статусом СОЗДАНО
    @RequestMapping(value = "/bids/create", method = RequestMethod.POST)
    public String createBid(Model model,
                            @Valid @ModelAttribute("route")Route route,
                            BindingResult bindingRouteResult,
                            @ModelAttribute("bid")Bid bid,
                            BindingResult bindingBidResult) {
        if(bindingBidResult.hasErrors() || bindingRouteResult.hasErrors()){
            return "/bids/create";
        }
        route = routeService.create(route);
        bid.setRoute(route);
        bid.setStatus(BID_CREATED);
        bidService.save(bid);
        return "redirect:/office/bids";
    }

    //Редактирование возможно если заявка СОЗДАНА или ОТКЛОНЕНА
    @RequestMapping(value = "/bids/{idBid}/edit", method = RequestMethod.GET)
    public String editBid(Model model,
                          @PathVariable Integer idBid) {
        Bid bid = bidService.findOne(idBid);
        if(bid.getStatus().equals(BID_CREATED)||
                bid.getStatus().equals(BID_REJECTED)){
            Owner owner = ownerService.findOwnerByEmailUser(userService.getUserEmail());
            List<Pet> pets = owner.getPet();
            model.addAttribute("pets", pets);
            model.addAttribute("route", bid.getRoute());
            model.addAttribute("bid", bid);
            return "/office/create";
        }
        return "/office/bids";
    }

    //Если мы редактировали заявку со статусом ОТКЛОНЕНА,
    // то ей выставляется статус СОЗДАНА, и переставляется дата
    @RequestMapping(value = "/bids/{idBid}/edit", method = RequestMethod.POST)
    public String editBid(Model model,
                          @Valid @ModelAttribute("route")Route route,
                          BindingResult bindingRouteResult,
                          @Valid @ModelAttribute("bid")Bid bid,
                          BindingResult bindingBidResult) {
        if(bindingBidResult.hasErrors() || bindingRouteResult.hasErrors()){
            return "/bids/create";
        }
        if(bid.getStatus().equals(BID_REJECTED)){
            bid.setStatus(BID_CREATED);
        }
        route = routeService.create(route);
        bid.setRoute(route);
        bidService.save(bid);
        return "redirect:/office/bids";
    }

    //Отправлять возможно заявки только в состоянии СОЗДАНА
    //В если приходит в состоянии ОТКЛОНЕНА, то перенаправляем на редактирование
    //В других состояниях перенаправляются на страницу, всех заявок
    @RequestMapping(value = "/bids/{idBid}/send", method = RequestMethod.GET)
    public String sendBid(Model model,
                          @PathVariable Integer idBid) {
        Bid bid = bidService.findOne(idBid);
        if(bid.getStatus().equals(BID_CREATED)){
            bid.setStatus(BID_PROCESSED);
            bidService.save(bid);
            return "/office/bids";
        }else if(bid.getStatus().equals(BID_REJECTED)){
            return String.format("redirect:/office/bids/%d/edit",idBid);
        }
        return "redirect:/office/bids";
    }

}
