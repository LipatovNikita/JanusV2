package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import topprogersgroup.entity.*;
import topprogersgroup.service.PassportService;
import topprogersgroup.validator.FileValidator;
import topprogersgroup.validator.ImmunizationDewormingValidator;
import topprogersgroup.validator.OwnerValidator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
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

    @Autowired
    private OwnerValidator ownerValidator;

    @Autowired
    private ImmunizationDewormingValidator dewormingValidator;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String fast(Model model) {
        Passport passport = new Passport();
        List<ImmunizationDeworming> immunizations = new ArrayList<>();
        immunizations.add(new ImmunizationDeworming());
        List<Vaccination> vaccinations = new ArrayList<>();
        vaccinations.add(new Vaccination());
        passport.setVaccination(vaccinations);
        passport.setImmunizationDeworming(immunizations);
        passport.setOwner(new Owner());
        List<Disease> diseases = new ArrayList<>();
        diseases.add(new Disease());
        Quarantine quarantine = new Quarantine();
        quarantine.setDiseases(diseases);
        model.addAttribute("passport", passport);
        model.addAttribute("quarantine", quarantine);
        return "fast/fastpassport";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/")
    public String add(Model model, @ModelAttribute("passport") Passport passport, @RequestParam("images_p") MultipartFile[] images, @ModelAttribute("quarantine") Quarantine  quarantine) {
        return "fast/fastpassport";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String showUploadForm() {
        return "testUpload";
    }

    // потом всё адаптируете, это тестовый метод для загрузки фотографий

    @RequestMapping(value = "/doUpload", method = RequestMethod.POST)

    public String testUpload(@RequestParam MultipartFile[] images // BindingResult bindingResult - это для валидации
                             // типа здесь Passport passport
    ) {

        Passport passport = new Passport();
        passport.setId(10);
        passport.setGuid("111a");
        passport.setPetName("Vaska");
        passport.setAnimalType("Cat");
        //   passport.setGender(true);
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
