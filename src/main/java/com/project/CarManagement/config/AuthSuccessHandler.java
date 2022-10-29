package com.project.CarManagement.config;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;


@Component
public class AuthSuccessHandler implements AuthenticationSuccessHandler{

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {
        
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        GrantedAuthority authority = authorities.iterator().next();
        if (authority.getAuthority().equals("hr")) {
            redirectStrategy.sendRedirect(request, response, "/employee/list");
        } else if (authority.getAuthority().equals("booking")){
            redirectStrategy.sendRedirect(request, response, "/car/list");
        }else{
            redirectStrategy.sendRedirect(request, response, "/trip/list");
        }
    }
    
}
