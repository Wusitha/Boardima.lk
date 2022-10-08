package com.services.bodimalk.controller;

import com.services.bodimalk.entity.User;
import com.services.bodimalk.service.UserBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class HomeController {
    @Autowired
    private UserBO userService;
    @GetMapping("/home")
    public String redirectHome(final HttpServletRequest request){
         String email=request.getRemoteUser();
         User user=userService.getUserByEmail(email);
         if(user==null)
             return "null";
         else
             return user.getType();

    }

    @GetMapping("/boarder")
    public String redirectBoarder(){
        return "boarder";
    }
//
//    @GetMapping("/owner")
//    public String redirectOwner(){
//        return "owner";
//    }
//
//    @GetMapping("/admin")
//    public String redirectAdminHomePage(final HttpServletRequest request){
//        return "admin";
//    }
}
