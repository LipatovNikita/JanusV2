package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.Pet;
import topprogersgroup.entity.Route;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/office")
public class OfficeController {


//    @Autowired


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        return "/office/home";
    }

    @RequestMapping(value = "/pets", method = RequestMethod.GET)
    public String getAllPetsPage(Model model) {
        //todo: Вытащить петов
//        List<Pet> pets = petsService.findAllByOwner(owner);
//        model.addAttribute("pets", pets);
        return "/office/mypets";
    }

    @RequestMapping(value = "/pets/{idPet}", method = RequestMethod.GET)
    public String getPetPage(Model model,
                             @PathVariable Integer idPet) {
//        Pet pet = petsService.findById(idPet);
//        model.addAttribute("pet", pet);
        return "/office/pet";
    }

    @RequestMapping(value = "/bids", method = RequestMethod.GET)
    public String getBidPage(Model model) {
//        List<Bid> bidList = bidSetvice.findAllByOwner(owner);
//        model.addAttribute("bidList", bidList);
        return "/office/bids";
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

    @RequestMapping(value = "/bids/{idBid}", method = RequestMethod.POST)
    public String previewBid(Model model,
                             @PathVariable Integer idBid) {
//        Bid bid = bidSetvice.findById(idBid);
//        model.addAttribute("bid", bid);
        return "/office/route";
    }

}
