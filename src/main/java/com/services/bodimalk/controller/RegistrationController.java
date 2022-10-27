package com.services.bodimalk.controller;


import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.service.UserBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


@RestController
public class RegistrationController {
    @Autowired
    private UserBO userService;

    @PostMapping("/register")
    public String registerUser(@RequestBody UserDTO userDTO, final HttpServletRequest request){
        User user=userService.registerUser(userDTO);
        if(user!=null)
        {
            userService.saveToken(user,applicationURL(request));
            return "Success";
        }
        else return "Unsuccess";

    }


    @GetMapping("/verifyRegistration")
    public String verifyUserRegistration(@RequestParam("token") String token){
        String result=userService.validateVerificationToken(token);
        if(result.equalsIgnoreCase("valid"))
            return "User Succesfully Added";
        else return "Bad User";
    }

    @PutMapping("/editUser")
    public String editUser(@RequestBody UserDTO userDTO)
    {
        return userService.editUser(userDTO);

    }



//    @GetMapping("/checkMailVerification")
//    public String checkState(@RequestBody String email){
//
//
//
//    }



    private String applicationURL(HttpServletRequest request) {
        return "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
    }

}
