package topprogersgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping({"/admin", "/admin/home"})
    public String getHomePage() {
        return "/admin/home";
    }
}
