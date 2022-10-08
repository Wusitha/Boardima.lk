package com.services.bodimalk.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@Configuration
public class CustomLoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {


    @Override
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
       String targetUrl=determineTargetUrl(authentication);
       if(response.isCommitted())
           return;
        RedirectStrategy redirectStrategy=new DefaultRedirectStrategy();
        redirectStrategy.sendRedirect(request,response,targetUrl);

    }

    protected String determineTargetUrl(Authentication authentication){
        String url="/login?error=true";
        Collection<? extends GrantedAuthority> authorities=authentication.getAuthorities();
        String role="";
        for(GrantedAuthority a:authorities)
            role=a.getAuthority();

        if(role.equals("ROLE_A"))
            url="/admin";
        else if (role.equals("ROLE_B"))
            url="/boarder";
        else if (role.equals("ROLE_O"))
            url="/owner";
        else
            url="/login";

        return url;



    }
}
