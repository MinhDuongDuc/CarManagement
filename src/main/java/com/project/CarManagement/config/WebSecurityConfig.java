package com.project.CarManagement.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.project.CarManagement.service.impl.UserServiceImpl;

@Configuration
public class WebSecurityConfig {
    
    @Autowired
    UserServiceImpl uImpl;
    @Autowired
    private AuthSuccessHandler authSuccessHandler;
    // @Bean
    // public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
    //     return authenticationConfiguration.getAuthenticationManager();
    // }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
    
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
         
        authProvider.setUserDetailsService(uImpl);
        authProvider.setPasswordEncoder(passwordEncoder());
     
        return authProvider;
    }

    @Bean
    public SecurityFilterChain filter(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                // .antMatchers("/employee/**").permitAll()
                .antMatchers("/employee/**").hasAuthority("hr")
                .antMatchers("/bo/**","/car/**","/pl/**").hasAuthority("booking")
                .antMatchers("/trip/**","/ticket/**").hasAuthority("trip")
                .antMatchers("/account/**").authenticated()
                // .anyRequest().permitAll()
                .and()
            .formLogin()
                .successHandler(authSuccessHandler)
                .usernameParameter("email")
                .passwordParameter("password");

        http.authenticationProvider(authenticationProvider());
        return http.build();
        
    }
}
