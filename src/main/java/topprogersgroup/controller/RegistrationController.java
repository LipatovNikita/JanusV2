package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import topprogersgroup.entity.Owner;
import topprogersgroup.entity.RegistrationForm;
import topprogersgroup.entity.UserCreateForm;
import topprogersgroup.service.OwnerService;
import topprogersgroup.service.UserService;

import javax.validation.Valid;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @Autowired
    private OwnerService ownerService;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView getRegistrationPage() {
        return new ModelAndView("registration");
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String handleRegistrationFirstPage(UserCreateForm form, Owner owner, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/registration";
        }
        try {
            Owner newOwner = owner;
            userService.create(form);
            ownerService.save(newOwner);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Адрес электронной почты уже существует");
            return "/registration";
        }
        return "home";
    }
}
