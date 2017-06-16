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
import topprogersgroup.entity.Administrator;
import topprogersgroup.entity.Employee;
import topprogersgroup.entity.User;
import topprogersgroup.entity.UserCreateForm;
import topprogersgroup.service.UserService;

import javax.validation.Valid;

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
        modelAndView.addObject("employee", new Employee());
        return modelAndView;
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String handleUserCreateForm(@Valid @ModelAttribute("form") UserCreateForm form,
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
            return "admin/user_create";
        }
        return "";
    }


//    @PreAuthorize("hasAuthority('ADMIN')")
//    @RequestMapping(value = "/create", method = RequestMethod.GET)
//    public String getUserCreatePage(Model model) {
//        model.addAttribute("form", new User());
//        return "admin/user_create";
//    }
//
//    @PreAuthorize("hasAuthority('ADMIN')")
//    @RequestMapping(value = "/create", method = RequestMethod.POST)
//    public String handleUserCreateForm(Model model,
//                                       @Valid @ModelAttribute("form") User form,
//                                       BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            model.addAttribute("form", form);
//            return "admin/user_create";
//        }
//        try {
//            userService.create(form);
//        } catch (DataIntegrityViolationException e) {
//            bindingResult.reject("email.exists", "Адрес электронной почты уже существует");
//            return "admin/user_create";
//        }
//        return "";
//    }


}
