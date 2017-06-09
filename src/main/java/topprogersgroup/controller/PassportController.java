package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Passport;

import java.util.Date;

/**
 * Created by VP on 04.06.2017.
 */

@RequestMapping(value = "/passport")
@Controller
public class PassportController{

    @RequestMapping(value = { "/","/all" }, method = RequestMethod.GET)
    public String allPassport(Model model) {
        Passport passport = new Passport();
        model.addAttribute("passport", passport);
        return "passport/passport";
    }


    @RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
    public String editPassport(Model model) {
        Passport passport = new Passport();
        passport.setId(10);
        passport.setPetName("Vaska");
        passport.setAnimalType("Cat");
        passport.setGender(true);
        passport.setBreed("Siam");
        passport.setColor("White");
        Date dateOfBirth = new Date();
        dateOfBirth.setTime(dateOfBirth.getTime() - 10000000);
        passport.setDateOfBirth(dateOfBirth);
        passport.setOffspring("2 cat");
        passport.setClinic("Good hand");
        passport.setDoctor("Ivanov");
        passport.setCastrationSterilization(true);
        passport.setMicrochipTattoo(true);
        passport.setNumberMicrochipTattoo("87568hs8a");
        Date dateOfImplantation = new Date();
        dateOfImplantation.setTime(dateOfImplantation.getTime() - 100000);
        passport.setDateOfImplantation(dateOfImplantation);
        passport.setPassportPhoto("/photo");
        model.addAttribute("passport", passport);
        return "passport/passport";
    }

    @RequestMapping(value = { "/fastpassport" }, method = RequestMethod.GET)
    public String fastPassport(Model model) {
        Passport passport = new Passport();

        model.addAttribute("passport", passport);
        return "passport/fastpassport";
    }


    @RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
    public String editPassport(Model model, @ModelAttribute("passport") Passport passport, BindingResult bindingResult) {
        if(passport != null){
            System.out.println("Паспорт не пустой");
        }
        if(!passport.isMicrochipTattoo()){
            passport.setDateOfImplantation(null);
            passport.setNumberMicrochipTattoo(null);
        }
        model.addAttribute("passport", passport);
        return "passport/passport";
    }

    @RequestMapping(value = { "/add" }, method = RequestMethod.GET)
    public String addPassport(Model model) {
        Passport passport = new Passport();
        model.addAttribute("passport", passport);
        return "passport/passport";
    }
    @RequestMapping(value = { "/add" }, method = RequestMethod.POST)
    public String addPersonSave(Model model, @ModelAttribute("passport") Passport passport, BindingResult bindingResult) {
//        passportValidator.validate(passport,bindingResult);
//        if(bindingResult.hasErrors()){
//
//            return "/addPassport";
//        }
        if(!passport.isMicrochipTattoo()){
            passport.setDateOfImplantation(null);
            passport.setNumberMicrochipTattoo(null);
        }
        Passport p = passport;
        String error = "First Name & Last Name is required!";
        model.addAttribute("errorMessage", error);
        return "passport/passport";
    }
}
