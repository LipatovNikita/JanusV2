package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.Passport;
import topprogersgroup.entity.Pet;
import topprogersgroup.entity.Route;
import topprogersgroup.service.BidService;
import topprogersgroup.service.CurrentUserService;
import topprogersgroup.service.PetService;
import topprogersgroup.service.RouteService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/office")
public class OfficeController {

    @Autowired
    CurrentUserService userService;
    @Autowired
    PetService petService;
    @Autowired
    RouteService routeService;
    @Autowired
    BidService bidService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        return "/office/home";
    }

    //Все петомцы
    @RequestMapping(value = "/pets", method = RequestMethod.GET)
    public String getAllPetsPage(Model model,
                                 @AuthenticationPrincipal User user) {
        String email = userService.getUserEmail();
        //todo: Вытащить петов
//        List<Pet> pets = owner.getPets();
//        model.addAttribute("pets", pets);
        return "/office/pets";
    }

    //Страница пета
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
        return "/office/pet";
    }

    //Все заявки
    @RequestMapping(value = "/bids", method = RequestMethod.GET)
    public String getBidPage(Model model) {
        //todo: Вытащить заявки
//        List<Bid> bidList = bidService.findAllByOwner(owner);
//        model.addAttribute("bidList", bidList);
        return "/office/bids";
    }

    //Просмотр заявки
    @RequestMapping(value = "/bids/preview/{idBid}", method = RequestMethod.POST)
    public String previewBid(Model model,
                             @PathVariable Integer idBid) {
        //todo:Запретить смотреть чужие заявки и чужих петов
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
//        List<Pet> pets = petsService.findAllByOwner(owner);
//        model.addAttribute("pets", pets);
        model.addAttribute("route", route);
        model.addAttribute("bid", bid);
        return "/office/create";
    }

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
        bid.setStatus("CREATED");
        bidService.save(bid);
        return "forward:/office/bids";
    }

    @RequestMapping(value = "/bids/{idBid}/edit", method = RequestMethod.GET)
    public String editBid(Model model,
                          @PathVariable Integer idBid) {
        Bid bid = bidService.findOne(idBid);
        if(bid.getStatus().equals("CREATED")){
//            List<Pet> pets = petsService.findAllByOwner(owner);
//        model.addAttribute("pets", pets);
            model.addAttribute("route", bid.getRoute());
            model.addAttribute("bid", bid);
            return "/office/create";
        }
        return "/office/bids";
    }

    @RequestMapping(value = "/bids/{idBid}/edit", method = RequestMethod.POST)
    public String editBid(Model model,
                          @Valid @ModelAttribute("route")Route route,
                          BindingResult bindingRouteResult,
                          @Valid @ModelAttribute("bid")Bid bid,
                          BindingResult bindingBidResult) {
        if(bindingBidResult.hasErrors() || bindingRouteResult.hasErrors()){
            return "/bids/create";
        }
        route = routeService.create(route);
        bid.setRoute(route);
        bidService.save(bid);
        return "forward:/office/bids";
    }

    @RequestMapping(value = "/bids/{idBid}/send", method = RequestMethod.GET)
    public String sendBid(Model model,
                          @PathVariable Integer idBid) {
        Bid bid = bidService.findOne(idBid);
        bid.setStatus("PROCESSED");
        bidService.save(bid);
        return "/office/bids";
    }


}
