package com.woohsi.bookfriend.controller;

import com.woohsi.bookfriend.po.User;
import com.woohsi.bookfriend.service.UserService;
import com.woohsi.bookfriend.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/register")
    public String register(@ModelAttribute User user, Model model) {
        return userService.register(user, model);
    }
    @RequestMapping("/login")
    public String login(@ModelAttribute User user, Model model, HttpSession session) {
        return userService.login(user, model, session);
    }
    @RequestMapping("/exit")
    public String exit(HttpSession session) {
        session.invalidate();
        return "login";
    }
    @RequestMapping("/sendEmail")
    public String sendEmail(Model model, HttpSession session, String email) {
        return userService.sendEmail(model, session, email);
    }

    @RequestMapping("/toResetPwd")
    public String toResetPwd(Model model, String code) {
        return userService.toResetPwd(model, code);
    }

    @RequestMapping("/resetPwd")
    public String resetPwd(Model model, String password, String code) {
        return userService.resetPwd(model, password, code);
    }
    @RequestMapping("/changePwd")
    public String changePwd(Model model, HttpSession session, String password, String repassword) {
        return userService.changePwd(model, session, password, repassword);
    }

    @RequestMapping("/userInfo")
    public String userInfo() {
        return "userInfo";
    }
    @RequestMapping("/delete")
    public String deleteUser(HttpSession session) {
        return userService.deleteUser(session);
    }

}
