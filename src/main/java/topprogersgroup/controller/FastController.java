package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Owner;
import topprogersgroup.entity.Passport;

/**
 * Created by VP on 10.06.2017.
 */

@Controller
@RequestMapping("/fast")
public class FastController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String fast(Model model){
        Passport passport = new Passport();
        Owner owner = new Owner();

        model.addAttribute("passport", passport);
        model.addAttribute("owner", owner);
        return "fast/fastpassport";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String fast(Model model,
                       @ModelAttribute("owner")Owner owner,
                       @ModelAttribute("passport")Passport passport){
        Passport p = passport;
        Owner o = owner;

        model.addAttribute("passport", p);
        model.addAttribute("owner", o);
        return "fast/fastpassport";
    }
}
