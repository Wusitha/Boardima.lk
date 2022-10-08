package com.services.bodimalk.controller;

import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.service.UserBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


@RestController
@RequestMapping(path = "/user")
@CrossOrigin(origins = "*")
public class UserController {

    private final UserBO userBO;
    @Autowired
    public UserController(UserBO userBO) {
        this.userBO = userBO;
    }

    @GetMapping("/type/{type}")
    public List<UserDTO> getAllUsersByType(@PathVariable String type){

        List<UserDTO> userDTOS = userBO.getAllUsersByType(type);
        return userDTOS;
    }

    @GetMapping("/get")
    public List<UserDTO> getAllUsers() {
        List<UserDTO> userDTOS = userBO.getAllUsers();
        return userDTOS;
    }

    @GetMapping("/get/{id}")
    public UserDTO getUserById(@PathVariable Long id){
        UserDTO userDTO = new UserDTO();
        userDTO.setId(id);
        return userBO.getUserById(userDTO);
    }

    @PostMapping("/add")
    public ResponseEntity addUser(@Valid @RequestBody UserDTO userDTO){

        if (userBO.addUser(userDTO)){
            return new ResponseEntity<>("User added", HttpStatus.OK);
        }

        return new ResponseEntity<>("User is not added", HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/update")
    public ResponseEntity updateUser(@Valid @RequestBody UserDTO userDTO){
        System.out.println(userDTO.toString());
        if (userBO.updateUser(userDTO)){
            return new ResponseEntity<>("User updated", HttpStatus.OK);
        }

        return new ResponseEntity<>("User update failed", HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/delete")
    public ResponseEntity deleteUser(@Valid @RequestBody UserDTO userDTO){
        if (userBO.deleteUser(userDTO)){
            return new ResponseEntity<>("User deleted.", HttpStatus.OK);
        }
        return new ResponseEntity<>("User delete failed", HttpStatus.BAD_REQUEST);
    }
}
