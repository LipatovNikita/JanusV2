package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        return "/office/home";
    }

    @RequestMapping(value = "/pets", method = RequestMethod.GET)
    public String getAllPetsPage(Model model) {
        List<Pet> pets = new ArrayList<>();
        pets.add(new Pet());
        pets.add(new Pet());
        pets.add(new Pet());
        pets.add(new Pet());
        pets.add(new Pet());
        model.addAttribute("pets", pets);
        return "/office/mypets";
    }

    @RequestMapping(value = "/bids", method = RequestMethod.GET)
    public String getBidPage(Model model) {
        List<Bid> bidList = new ArrayList<>();
        model.addAttribute("bidList", bidList);
        return "/office/bids";
    }

    @RequestMapping(value = "/mypets/{idpet}", method = RequestMethod.GET)
    public String getPetPage(Model model) {
        Pet pet = new Pet(); // достать по id
        model.addAttribute("pet", pet);
        return "/office/pet";
    }

    @RequestMapping(value = "/mypets/{idpet}/slider", method = RequestMethod.GET)
    public String getDocumentPage(Model model) {
        Pet pet = new Pet(); // достать по id
        model.addAttribute("pet", pet);
        return "/office/slider";
    }

    @RequestMapping(value = "/mypets/{idpet}/route", method = RequestMethod.GET)
    public String createRoute(Model model) {
        Route route = new Route();
        model.addAttribute("route", route);
        return "/office/route";
    }

    @RequestMapping(value = "/mypets/{idpet}/route", method = RequestMethod.POST)
    public String createRoute(Model model,
                              @ModelAttribute("route")Route route) {
        Pet pet = new Pet(); // достать по id
        model.addAttribute("pet", pet);
        return "/office/route";
    }

}
