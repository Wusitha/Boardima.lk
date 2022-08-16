package com.services.bodimalk.controller;

import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.service.UserBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;


@RestController
@RequestMapping(path = "/user")
public class UserController {

    @Autowired
    //UserBO userBO;

    @PostMapping("/add")
    public UserDTO addUser(@Valid @RequestBody UserDTO userDTO){
        //userBO.addUser(userDTO);
        return userDTO;
    }
}
