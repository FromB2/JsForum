package kr.ac.kopo.jsforum.controller;

import kr.ac.kopo.jsforum.model.User;
import kr.ac.kopo.jsforum.service.UserService;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class RootController {
    @Autowired
    UserService service;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }
    @PostMapping("/signup")
    public String signup(User item){
        service.signup(item);

        return "redirect:.";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(User user, HttpSession session) {
        System.out.println("TEST"+user.getId());
        if (service.login(user)) {
            System.out.println("OK"+user.getName());
            session.setAttribute("user", user);

            String targetUrl = (String) session.getAttribute("target_url");
            System.out.println("RootController: " + targetUrl); //그냥 찍어보는거인듯
            session.removeAttribute("target_url");

            if (targetUrl == null)
                return "redirect:.";
            else
                return "redirect:" + targetUrl;
        } else
            System.out.println("FAIL"+user.getId());
            return "redirect:login";
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:.";
    }
    @ResponseBody
    @GetMapping("/checkId/{id}")
    public String checkId(@PathVariable String id){
        if(service.checkId(id))
            return "OK";
        else
            return "NO";
    }


}
