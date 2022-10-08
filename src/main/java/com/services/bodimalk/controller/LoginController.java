package com.services.bodimalk.controller;

import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.dto.LoginDTO;
import com.services.bodimalk.service.UserBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController {


//    private AuthenticationManager authenticationManager;\
    @Autowired
    private AuthenticationProvider authenticationProvider;

    @Autowired
    private UserDAO userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserBO userService;

    @PostMapping("/signin")
    public ResponseEntity<String> authenticateUser(@RequestBody LoginDTO loginDTO, final HttpServletRequest request)
    {
        try{
            Authentication authentication=authenticationProvider.authenticate(new UsernamePasswordAuthenticationToken(loginDTO.getUsername(),loginDTO.getPassword()));

            if(authentication.isAuthenticated())
            {

                SecurityContextHolder.getContext().setAuthentication(authentication);
                Authentication authentication1=SecurityContextHolder.getContext().getAuthentication();
                return  new ResponseEntity<>((authentication1.getAuthorities().toString()).substring(6,7), HttpStatus.OK);

            }
            else
                return new ResponseEntity<>("Password Incorrect",HttpStatus.BAD_REQUEST);

        }
        catch (Exception exception){
            return new ResponseEntity<>(exception.getMessage(),HttpStatus.BAD_REQUEST);

        }










//        User user=userService.getUserByEmail(request.getRemoteUser());
//        if(user!=null)
//            return  new ResponseEntity<>(user.getType(), HttpStatus.OK);
//        else
//            return new ResponseEntity<>("User is not in System",HttpStatus.OK);


    }

    @GetMapping("/admin/hello")
    public ResponseEntity helloAdmin()
    {
        Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        return new ResponseEntity<>("Hello, I am admin my email is "+authentication.getName(),HttpStatus.OK);

    }

    @GetMapping("/owner/hello")
    public ResponseEntity helloOwner()
    {
        Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
        return new ResponseEntity<>("Hello, I am B owner and my email "+authentication.getName(),HttpStatus.OK);

    }


}
