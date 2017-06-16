package topprogersgroup.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.CheckPoint;
import topprogersgroup.entity.Employee;
import topprogersgroup.entity.StateVeterinaryService;
import topprogersgroup.entity.VeterinaryDocument;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by VP on 16.06.2017.
 */

@RequestMapping("/resp") //responsibilities
@Controller
public class ResponsibilitiesController {

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/vet"}, method = RequestMethod.GET)
    public String createSVetService(Model model){
        StateVeterinaryService service = new StateVeterinaryService();
        model.addAttribute("svService", service);
        return "resp/statevetservice";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/vet"}, method = RequestMethod.POST)
    public String createSVetService(Model model,
                                    @Valid @ModelAttribute("svService")StateVeterinaryService service,
                                    BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("svService", service);
            return "resp/statevetservice";
        }
        return "forward:admin/home";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/checkpoint"}, method = RequestMethod.GET)
    public String createCheckPoint(Model model){
        CheckPoint checkPoint = new CheckPoint();
        Map<Integer, Employee> inspector = new HashMap<>();
        model.addAttribute("checkPoint", checkPoint);
        model.addAttribute("inspector", inspector);
        return "resp/checkpoint";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/checkpoint"}, method = RequestMethod.POST)
    public String createCheckPoint(Model model,
                                   @Valid @ModelAttribute("checkPoint")CheckPoint checkPoint,
                                   @ModelAttribute("inspector")Map<Integer, Employee> inspector,
                                   BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("checkPoint", checkPoint);
            model.addAttribute("inspector", inspector);
            return "resp/checkpoint";
        }
        return "forward:admin/home";
    }


}
