package com.services.bodimalk.service;

import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;

public interface UserBO {
    public User getUserEntity(UserDTO userDTO);
    public UserDTO addUser(UserDTO userDTO);
}
