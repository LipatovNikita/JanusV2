package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import topprogersgroup.entity.*;
import topprogersgroup.service.PassportService;
import topprogersgroup.validator.FileValidator;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;

@Controller
@RequestMapping("/fast")
public class FastController {

    @Autowired
    private PassportService passportService;

    @Autowired
    private FileValidator fileValidator;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String fast(Model model){
        Passport passport = new Passport();
        Owner owner = new Owner();
        ImmunizationDeworming immunization = new ImmunizationDeworming();
        Quarantine quarantine = new Quarantine();
        quarantine.setDiseases(new ArrayList<Disease>());
        List<Vaccination> vaccinations = new ArrayList<>(10);
        Vaccination vaccination = new Vaccination();
        model.addAttribute("passport", passport);
        model.addAttribute("owner", owner);
        model.addAttribute("quarantine", quarantine);
        model.addAttribute("immunization", immunization);
        model.addAttribute("vaccination", vaccination);
        return "fast/fastpassport";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String fast(Model model,
                   @ModelAttribute("owner")Owner owner,
                       @ModelAttribute("vaccination") Vaccination vaccination,
                       @ModelAttribute("quarantine")Quarantine quarantine,
                       @ModelAttribute("passport")Passport passport,
                       @ModelAttribute("immunization")ImmunizationDeworming immunization,
                      @RequestParam("images_p") MultipartFile[] images) {
        Passport p = passport;
        Owner o = owner;
        ImmunizationDeworming i = immunization;
        Quarantine q =  quarantine;
        model.addAttribute("passport", p);
        model.addAttribute("quarantine", q);
        model.addAttribute("owner", o);
        model.addAttribute("immunization", i);
        return "fast/fastpassport";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String showUploadForm() {
        return "testUpload";
    }

    // потом всё адаптируете, это тестовый метод для загрузки фотографий

    @RequestMapping(value = "/doUpload", method = RequestMethod.POST)
    public String testUpload(@RequestParam MultipartFile[] images, // BindingResult bindingResult - это для валидации
                             @ModelAttribute("immunization")ImmunizationDeworming immunization) {
        Passport passport = new Passport();
        passport.setId(10);
        passport.setGuid("111a");
        passport.setPetName("Vaska");
        passport.setAnimalType("Cat");
        passport.setGender(true);
        passport.setBreed("Siam");
        passport.setColor("White");
        Date dateOfBirth = new Date();
        dateOfBirth.setTime(dateOfBirth.getTime() - 1000000000);
        passport.setDateOfBirth(dateOfBirth);
        passport.setOffspring("2 cat");
        passport.setClinic("Good hand");
        passport.setDoctor("Ivanov");
        passport.setCastrationSterilization(true);
        passport.setMicrochipTattoo(true);
        passport.setNumberMicrochipTattoo("87568hs8a");
        Date dateOfImplantation = new Date();
        dateOfImplantation.setTime(dateOfImplantation.getTime() - 1000000);
        passport.setDateOfImplantation(dateOfImplantation);

        for (MultipartFile image : images) {
//            fileValidator.validate(image, bindingResult);
//            if (bindingResult.hasErrors()) {
//                return "testUpload";
//            }
            passportService.uploadPassportImage(image, passport); // passport из request
        }
        return "fast/fastpassport";
    }
}
