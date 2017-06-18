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
import topprogersgroup.entity.User;
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
    public ModelAndView registrationPage() {
        ModelAndView modelAndView = new ModelAndView("registration");
        modelAndView.addObject("form", new UserCreateForm());
        modelAndView.addObject("owner", new Owner());
        return modelAndView;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registrationPage(@ModelAttribute("form") UserCreateForm form,
                                   BindingResult bindingResultForm,
                                   @Valid @ModelAttribute("owner") Owner owner,
                                   BindingResult bindingResultOwner) {
        if (bindingResultForm.hasErrors() || bindingResultOwner.hasErrors()) {
            return "/registration";
        }
        try {
            //todo:Проверить на валидность Owner
            User user = userService.create(form);
            owner.setUser(user);
            ownerService.create(owner);
        } catch (DataIntegrityViolationException e) {
            bindingResultForm.reject("email.exists", "Адрес электронной почты уже существует");
            return "/registration";
        }
        return "home";
    }
}
