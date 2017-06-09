package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Owner;

/**
 * Created by VP on 04.06.2017.
 */

@Controller
@RequestMapping(value = "/owner")
public class OwnerController {

    @RequestMapping(value = {"/edit"}, method = RequestMethod.GET)
    public String editOwner(Model model){

        return "allOwner";
    }

    @RequestMapping(value = {"/edit"}, method = RequestMethod.POST)
    public String editOwner(Model model, @ModelAttribute("owner") Owner owner){

        return "allOwner";
    }

    @RequestMapping(value = {"/add"}, method = RequestMethod.GET)
    public String addOwner(Model model){
        Owner owner = new Owner();
        model.addAttribute("owner", owner);
        return "allOwner";
    }

    @RequestMapping(value = {"/add"}, method = RequestMethod.POST)
    public String addOwner(Model model, @ModelAttribute("owner") Owner owner){

        return "allOwner";
    }



}
