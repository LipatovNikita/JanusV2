package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import topprogersgroup.entity.*;
import topprogersgroup.service.UserService;

import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    private UserService userService;

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/", "/home"})
    public String getAdminHomePage() {
        return "admin/home";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView getUserCreatePage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/user_create");
        modelAndView.addObject("form", new UserCreateForm());
        modelAndView.addObject("admin", new Administrator());
        Employee e = new Employee();
        e.setEmploymentDate(new Date(54646464646565656L));
        modelAndView.addObject("employee", e);
        return modelAndView;
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String handleUserCreateForm(Model model,
                                       @Valid @ModelAttribute("form") UserCreateForm form,
                                       BindingResult bindingResult,
                                       @ModelAttribute("admin")Administrator admin,
                                       @ModelAttribute("employee")Employee employee) {
        if (bindingResult.hasErrors()) {
            return "admin/user_create";
        }
        try {
            userService.create(form);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Адрес электронной почты уже существует");
//            model.a("admin", new Administrator());
//            Employee e = new Employee();
//            e.setEmploymentDate(new Date());
//            modelAndView.addObject("employee", e);
            return "admin/user_create";
        }
        if(form.getRole().equals(Role.ADMIN)){
            Administrator admin1= admin;
        }
        else if(form.getRole().equals(Role.EMPLOYEE)){
            Employee employee1 = employee;
        }
        return "admin/home";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/vet"}, method = RequestMethod.GET)
    public String createSVetService(Model model){
        StateVeterinaryService service = new StateVeterinaryService();
        model.addAttribute("svService", service);
        return "admin/statevetservice";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/vet"}, method = RequestMethod.POST)
    public String createSVetService(Model model,
                                    @Valid @ModelAttribute("svService")StateVeterinaryService service,
                                    BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("svService", service);
            return "admin/statevetservice";
        }
        return "forward:admin/home";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/checkpoint"}, method = RequestMethod.GET)
    public String createCheckPoint(Model model){
        CheckPoint checkPoint = new CheckPoint();
        Map<Integer, Employee> inspector = new HashMap<>();
        model.addAttribute("checkPoint", checkPoint);
//        model.addAttribute("inspector", inspector);
        return "admin/checkpoint";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = {"/checkpoint"}, method = RequestMethod.POST)
    public String createCheckPoint(Model model,
                                   @Valid @ModelAttribute("checkPoint")CheckPoint checkPoint,
//                                   @ModelAttribute("inspector")Map<Integer, Employee> inspector,
                                   BindingResult result){
        if(result.hasErrors()){
//            model.addAttribute("checkPoint", checkPoint);
//            model.addAttribute("inspector", inspector);
            return "admin/checkpoint";
        }
        return "forward:admin/home";
    }

}
