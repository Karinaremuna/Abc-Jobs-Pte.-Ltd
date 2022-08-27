package com.AbcJobs.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
@Configuration
@EnableWebSecurity
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter {
    private PasswordEncoder passwordencoder;
    @Autowired
    UserDetailsService userservice;
	@Autowired
	UserDetailsService userdetail;
    @Autowired
    ApplicationSecurityConfig (PasswordEncoder encoder){
    	this.passwordencoder=encoder;
    }
    @Autowired
    RolesHandler roles;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
		.antMatchers("/",
				"home",
				"/register",
				"registration",
				"/myreg",
				"Thankyou",
				"/login",
				"login",
				"/thankyou",
				"thankyou",
				"/emailvalidation",
				"EmailConfirmation",
				"/verifcode",
				"ForgetPasswordCode",
				"/verifemail",
				"ForgetPasswordEmail",
				"/forgotpassword",
				"ForgotPassword",
				"/about",
				"About",
				"/contact",
				"Contact",
				"/feature",
				"Feature",
				"/testimonial",
				"Testimonial",
				"/feedback",
				"Feedback",
				"/css/**",
				"/img/**",
				"/fonts/**",
				"/js/**",
				"/lib/**",
				"/scss/**",
				"/vendor/**").permitAll()
		.antMatchers("/admin", 
				"/updateUser/**", 
				"/deleteUser/**",
				"/bulkemail",
				"/sendbulkemail",
				"/resultBulkEmail",
				"/viewjobresultadmin",
				"/postjob",
				"/ppadmin",
				"/updateProfile-admin/updateprofile-admin",
				"/updateUser/update",
				"/postthread",
				"/viewthreadadmin",
				"/thread-admin",
				"/search-admin",
				"/searchusadmin",
				"/viewjobadmin",
				"/message-admin").hasAnyAuthority("ADMIN")
		.antMatchers("/user",
				"/updateProfile/updateprofile",
				"/search",
				"/searchus",
				"/viewjob",
				"/thread",
				"/message").hasAnyAuthority("USER")
		.anyRequest()
		.authenticated()
		.and()
		.formLogin()
		.loginPage("/login").permitAll()
		.usernameParameter("username")
		.passwordParameter("password")
		.successHandler(roles)
		.and()
		.logout()
		.logoutUrl("/logout")
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.clearAuthentication(true)
		.invalidateHttpSession(true);
		
	}
	@Autowired
	AuthenticationProvider authProvider() {
		DaoAuthenticationProvider  dao=new DaoAuthenticationProvider();
		dao.setPasswordEncoder(passwordencoder);
		dao.setUserDetailsService(userservice);
		
		return dao;
	}

}

