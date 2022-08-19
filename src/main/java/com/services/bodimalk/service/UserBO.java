package com.services.bodimalk.service;

import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;

import java.util.List;

public interface UserBO {

    public boolean addUser(UserDTO userDTO);
    public boolean updateUser(UserDTO userDTO);
    public UserDTO getUserById(UserDTO userDTO);
    public List<UserDTO> getAllUsers();
    public List<UserDTO> getAllUsersByType(String type);
    public boolean deleteUser(UserDTO userDTO);
}
