package com.services.bodimalk.service;

import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.dao.VerificationTokenDAO;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.entity.VerificationToken;
import com.services.bodimalk.util.Globals;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
<<<<<<< HEAD
import java.util.UUID;
=======
>>>>>>> 0f1b051452fc3e4136c7c790906dc14031f29fba

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

    @Autowired
    private VerificationTokenDAO verificationTokenDAO;

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Override
    public User registerUser(UserDTO userDTO) {

            User user=new User();
            user.setEmail(userDTO.getEmail());
            user.setFirstName(userDTO.getFirstName());
            user.setLastName(userDTO.getLastName());
            user.setPassword(passwordEncoder.encode(userDTO.getPassword()));
            user.setState("P");
            user.setType(userDTO.getType());
            userDAO.save(user);

            return user;









    }

    @Override
    public void saveToken(User user, String url) {
        VerificationToken token=new VerificationToken(user, UUID.randomUUID().toString());
        verificationTokenDAO.save(token);
        sendEmail(token.getUser(),token.getToken(),url);


    }

    @Override
    public String validateVerificationToken(String token) {
        VerificationToken verificationToken=verificationTokenDAO.findByToken(token);
        if(verificationToken==null)
            return "invalid";
        else{
            User user=verificationToken.getUser();
            user.setState("A");
            userDAO.save(user);
            return "valid";
        }
    }

    @Override
    public User getUserByEmail(String email) {
        return userDAO.findByEmail(email);
    }

    @Override
    public String editUser(UserDTO userDTO) {

        User user=userDAO.findByEmail(userDTO.getEmail());
        if(user==null)
            return "Error";
        user.setFirstName(userDTO.getFirstName());
        user.setLastName(userDTO.getLastName());
        userDAO.save(user);
        return "Success";



    }

    @Override
    public List<User> getAllUsersList() {
        List<User> usersWithAllAttributes= userDAO.getAllUsers();
        List<User> users=new ArrayList<>();
        for(User user:usersWithAllAttributes)
        {
            users.add(new User(user.getFirstName(),user.getLastName(),user.getState(),user.getType()));
        }


        return users;


    }

    @Override
    public List<User> getBoardersList() {
        List<User> boardersWithAllAttributes= userDAO.getAllBoarders();
        List<User> boarders=new ArrayList<>();
        for(User user:boardersWithAllAttributes)
        {
            boarders.add(new User(user.getFirstName(),user.getLastName(),user.getState(),user.getType()));
        }


        return boarders;
    }

    @Override
    public List<User> getBoardingOwnerList() {
        List<User> boardingOwnersWithAllAttributes= userDAO.getAllBoardingOwners();
        List<User> boardingOwners=new ArrayList<>();
        for(User user:boardingOwnersWithAllAttributes)
        {
            boardingOwners.add(new User(user.getFirstName(),user.getLastName(),user.getState(),user.getType()));
        }


        return boardingOwners;
    }


    private void sendEmail(User user, String token,String applicationURL) {
        String url=applicationURL+"/verifyRegistration?token="+token;
        SimpleMailMessage simpleMailMessage=new SimpleMailMessage();
        simpleMailMessage.setFrom("2022gp2@gmail.com");
        simpleMailMessage.setTo(user.getEmail());
        simpleMailMessage.setText(url);
        simpleMailMessage.setSubject("Verify Your Registration in Bodima.lk");
        javaMailSender.send(simpleMailMessage);

    }
}
