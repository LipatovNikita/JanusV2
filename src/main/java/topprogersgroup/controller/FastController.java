package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import topprogersgroup.entity.*;
import java.util.List;
import java.util.ArrayList;

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
        Address address = new Address();
        ImmunizationDeworming immunization = new ImmunizationDeworming();
        Quarantine quarantine = new Quarantine();
        quarantine.setDiseases(new ArrayList<Disease>());
        List<Vaccination> vaccinations = new ArrayList<>(10);
        Vaccination vaccination = new Vaccination();
        model.addAttribute("passport", passport);
        model.addAttribute("owner", owner);
        model.addAttribute("address", address);
        model.addAttribute("quarantine", quarantine);
        model.addAttribute("immunization", immunization);
        model.addAttribute("vaccination", vaccination);
        return "fast/fastpassport";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String fast(Model model,
                       @ModelAttribute("owner")Owner owner,
                       @ModelAttribute("passport")Passport passport,
                       @ModelAttribute("vaccination") Vaccination vaccination,
                       @ModelAttribute("quarantine")Quarantine quarantine,
                       @ModelAttribute("immunization")ImmunizationDeworming immunization,
                       @ModelAttribute("address")Address address,
                       @RequestParam("file") MultipartFile file){
        Passport p = passport;
        Owner o = owner;
        Address a = address;
        MultipartFile f = file;

        ImmunizationDeworming i = immunization;
        Quarantine q =  quarantine;
        model.addAttribute("passport", p);
        model.addAttribute("quarantine", q);
        model.addAttribute("owner", o);
        model.addAttribute("address", a);
        model.addAttribute("immunization", i);
        return "fast/fastpassport";
    }
}
