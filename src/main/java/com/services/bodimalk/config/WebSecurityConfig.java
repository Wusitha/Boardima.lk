package com.services.bodimalk.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


@EnableWebSecurity
public class WebSecurityConfig{
    @Bean
    public PasswordEncoder passwordEncoder(){
        return  new BCryptPasswordEncoder(11);
    }


    @Autowired
    private UserDetailsService userDetailsService;



    @Autowired
    private CustomLoginSuccessHandler successHandler;

    @Bean
    AuthenticationProvider authenticationProvider(){
        DaoAuthenticationProvider provider=new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(new BCryptPasswordEncoder(11));

        return provider;

    }




    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {



        http
                .csrf().disable()
                .authorizeHttpRequests((authz)->authz
                        .antMatchers("/admin","admin/getuser").hasRole("A")
                        .antMatchers("/boarder").hasRole("B")
                        .antMatchers("/owner/hello").hasRole("O")
                        .antMatchers("/home","/register","/verifyRegistration","/signin","/editUser","/admin/allUsers","/admin/boarders","/admin/boardingOwners","/admin/allReviews"
                                ,"/admin/allAdvertisements","/owner/getReviews","/admin/getSpecificAdvertisement","/owner/getReviews"
                        ,"/admin/acceptAdvertisement","/owner/boardersList","/owner/acceptBoarder","/signout","/owner/addPlace","/admin/completeReview").permitAll()
                        .anyRequest().authenticated()




                ).rememberMe();

        return http.build();

    }

}
