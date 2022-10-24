package com.services.bodimalk.service;

import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.util.Globals;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserBOImpl implements UserBO {
    private final UserDAO userDAO;

    @Autowired
    public UserBOImpl(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    private User getUserEntityWithPrimitives(UserDTO userDTO){
        User user = new User();
        //set properties
        user.setId(userDTO.getId());
        user.setNic(userDTO.getNic());
        user.setFirstName(userDTO.getFirstName());
        user.setLastName(userDTO.getLastName());
        user.setContact(userDTO.getContact());
        user.setEmail(userDTO.getEmail());
        user.setPassword(userDTO.getPassword());
        user.setGender(userDTO.getGender());
        user.setState(userDTO.getState());
        user.setType(userDTO.getType());
        user.setGuardianName(userDTO.getGuardianName());
        user.setGuardianContact(userDTO.getGuardianContact());
        user.setProfileImg(userDTO.getProfileImg());
        return user;
    }

    private UserDTO getUserDtoWithPrimitives(User user){
        UserDTO userDTO = new UserDTO();

        //set properties
        userDTO.setId(user.getId());
        userDTO.setNic(user.getNic());
        userDTO.setFirstName(user.getFirstName());
        userDTO.setLastName(user.getLastName());
        userDTO.setContact(user.getContact());
        userDTO.setEmail(user.getEmail());
        userDTO.setPassword(user.getPassword());
        userDTO.setGender(user.getGender());
        userDTO.setState(user.getState());
        userDTO.setType(user.getType());
        userDTO.setGuardianName(user.getGuardianName());
        userDTO.setGuardianContact(user.getGuardianContact());
        userDTO.setProfileImg(user.getProfileImg());

        return userDTO;
    }

    // returns boolean true if and only if nic and email is unique
    private boolean checkEmailAndNic(User user){
        //check email
        if (userDAO.existsByEmail(user.getEmail())){
            User userChecked = userDAO.findByEmail(user.getEmail());

            //check same user
            if (user.getId() != null){
                if (!user.getId().equals(userChecked.getId())) return false;
            }
        }

        if (user.getNic() != null){
            if (userDAO.existsByNic(user.getNic())) {
                User userChecked = userDAO.findByNic(user.getNic());

                //check same user
                if (user.getId() != null) {
                    return user.getId().equals(userChecked.getId());
                }
            }
        }

        return true;
    }


    @Override
    public boolean addUser(UserDTO userDTO) {

        User user = getUserEntityWithPrimitives(userDTO);

        if (!checkEmailAndNic(user)) return false;

        //set default user attributes
        user.setState(Globals.USER_STATE_ACTIVE);

        if (!userDAO.existsByEmail(user.getEmail())){
            try {
                userDAO.save(user);
            } catch (Exception e) {
                System.out.println("Cannot save user. "+e);
                return false;
            }
            return true;
        }
        return false;

    }

    @Override
    public boolean updateUser(UserDTO userDTO) {

        User user = new User();
        BeanUtils.copyProperties(userDTO, user);

        // check email
        if (!checkEmailAndNic(user)) return false;

        // check id
        if (userDAO.existsById(user.getId())){
            try {
                userDAO.save(user);
            } catch (Exception e) {
                System.out.println("Cannot update user. "+e);
                return false;
            }
            return true;
        }
        return false;
    }

    @Override
    public UserDTO getUserById(UserDTO userDTO) {
        if (userDAO.existsById(userDTO.getId())){
            User user = userDAO.findUserById(userDTO.getId());
            BeanUtils.copyProperties(user, userDTO);

            return userDTO;

        }
        return new UserDTO();
    }

    @Override
    public List<UserDTO> getAllUsers() {
        List<User> users = userDAO.findAll();
        return getUserDTOS(users);
    }

    private List<UserDTO> getUserDTOS(List<User> users) {
        List<UserDTO> userDTOS = new ArrayList<>();

        users.forEach(user -> {
            UserDTO userDTO = new UserDTO();
            BeanUtils.copyProperties(user, userDTO);
            userDTOS.add(userDTO);
        });

        return userDTOS;
    }

    @Override
    public List<UserDTO> getAllUsersByType(String type) {
        List<User> users = userDAO.findAllByType(type);
        return getUserDTOS(users);
    }

    @Override
    public boolean deleteUser(UserDTO userDTO) {

        User user = new User();
        BeanUtils.copyProperties(userDTO, user);

        if (userDAO.existsById(user.getId())){
            userDAO.delete(user);
            return true;
        }
        return false;
    }
}
