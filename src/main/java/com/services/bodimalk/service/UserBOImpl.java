package com.services.bodimalk.service;

import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserBOImpl implements UserBO {

    @Autowired
    UserDAO userDAO;

    @Override
    public User getUserEntity(UserDTO userDTO) {

        User user = new User();

        user.setContact(userDTO.getContact());
        user.setDob(userDTO.getDob());
        user.setEmail(userDTO.getEmail());
        user.setGender(userDTO.getGender());
        user.setFirstName(userDTO.getFirstName());
        user.setLastName(userDTO.getLastName());
        user.setGuardianName(userDTO.getGuardianName());
        user.setGuardianContact(userDTO.getGuardianContact());
        return user;
    }

    @Override
    public UserDTO addUser(UserDTO userDTO) {
        return userDTO;
    }
}
