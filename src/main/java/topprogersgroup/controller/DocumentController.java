package topprogersgroup.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.VeterinaryDocument;
import java.util.List;
import java.util.ArrayList;

/**
 * Created by VP on 16.06.2017.
 */

@RequestMapping("/doc")
@Controller
public class DocumentController {

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String all(Model model){
        List<VeterinaryDocument> vdList = new ArrayList();
        VeterinaryDocument vd = new VeterinaryDocument();
        model.addAttribute("veterinaryDocument", vd);
        return "fast/fastpassport";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/preview/{idDoc}"}, method = RequestMethod.GET)
    public String getVeterinaryDocument(Model model,
                                  @PathVariable Integer idDoc){
        VeterinaryDocument vd = new VeterinaryDocument();
        model.addAttribute("veterinaryDocument", vd);
        return "fast/fastpassport";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/preview/{id}"}, method = RequestMethod.POST)
    public String getVeterinaryDocument(Model model,
                                  @ModelAttribute("veterinaryDocument")VeterinaryDocument vd){
        return "fast/fastpassport";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/send/{idDoc}"}, method = RequestMethod.GET)
    public String sendDocumentToForeignCountry(@PathVariable Integer idDoc){
//        VeterinaryDocument document =

        return "";
    }

//    return "redirect:/books"; вернул http://localhost:8080/books?
//            return "jsp/books/booksList"; вернул http://localhost:8080/request-list?
//            return "forward:/books"; вернул http://localhost:8080/request-list?


}
