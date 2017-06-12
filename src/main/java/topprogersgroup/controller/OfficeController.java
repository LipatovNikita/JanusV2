package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Pet;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/office")
public class OfficeController {

    @RequestMapping(value = "/mypets", method = RequestMethod.GET)
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

    @RequestMapping(value = "/mypets/{idpet}", method = RequestMethod.GET)
    public String getPetPage(Model model) {
        Pet pet = new Pet(); // достать по id
        model.addAttribute("pet", pet);
        return "/office/pet";
    }
    @RequestMapping(value = "/mypets/{idpet}/doc", method = RequestMethod.GET)
    public String getDocumentPage(Model model) {
        Pet pet = new Pet(); // достать по id
        model.addAttribute("pet", pet);
        return "/office/pet";
    }
}
