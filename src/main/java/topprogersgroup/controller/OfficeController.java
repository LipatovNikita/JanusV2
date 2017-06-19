package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.Passport;
import topprogersgroup.entity.Pet;
import topprogersgroup.entity.Route;
import topprogersgroup.service.CurrentUserService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/office")
public class OfficeController {


    @Autowired
    CurrentUserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        return "/office/home";
    }

    @RequestMapping(value = "/pets", method = RequestMethod.GET)
    public String getAllPetsPage(Model model,
                                 @AuthenticationPrincipal User user) {
        String email = userService.getUserEmail();
        //todo: Вытащить петов
//        List<Pet> pets = owner.getPets();
//        model.addAttribute("pets", pets);
        return "/office/mypets";
    }

    @RequestMapping(value = "/pets/{idPet}", method = RequestMethod.GET)
    public String getPetPage(Model model,
                             @PathVariable Integer idPet) {
//        Pet pet = petsService.findById(idPet);
//        Passport passport = pet.getPassport();
//        model.addAttribute("pet", pet);
//        model.addAttribute("passport", passport);
//        model.addAttribute("owner", passport.getOwner());
//        model.addAttribute("vaccinationList", passport.getVaccination());
//        model.addAttribute("immunizationList", passport.getImmunizationDeworming());
//        model.addAttribute("quarantine",pet.getQuarantine());
        return "/office/pet";
    }

    @RequestMapping(value = "/bids", method = RequestMethod.GET)
    public String getBidPage(Model model) {
//        List<Bid> bidList = bidService.findAllByOwner(owner);
//        model.addAttribute("bidList", bidList);
        return "/office/bids";
    }

    @RequestMapping(value = "/bids/{idBid}", method = RequestMethod.POST)
    public String previewBid(Model model,
                             @PathVariable Integer idBid) {
//        Bid bid = bidSetvice.findById(idBid);
//        model.addAttribute("bid", bid);
        return "/office/route";
    }

    @RequestMapping(value = "/bids/create", method = RequestMethod.GET)
    public String createBid(Model model) {
        Route route = new Route();
        Bid bid = new Bid();
//        List<Pet> pets = petsService.findAllByOwner(owner);
//        model.addAttribute("pets", pets);
        model.addAttribute("route", route);
        model.addAttribute("bid", bid);
        return "/office/bid";
    }

    @RequestMapping(value = "/bids/create", method = RequestMethod.POST)
    public String createBid(Model model,
                              @ModelAttribute("route")Route route,
                              @ModelAttribute("bid")Bid bid) {
        Pet pet = new Pet(); // достать по id
        model.addAttribute("pet", pet);
        return "forward:/office/bids";
    }


}
