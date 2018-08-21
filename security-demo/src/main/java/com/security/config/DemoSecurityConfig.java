package com.security.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		UserBuilder user = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(user.username("one").password("one").roles("Employee"))
			.withUser(user.username("two").password("two").roles("Employee", "Manager"))
			.withUser(user.username("three").password("three").roles("Employee","Admin"));
		
		
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/").hasRole("Employee")
			.antMatchers("/admin").hasRole("Admin")
			.antMatchers("/manager").hasRole("Manager")
			.and()
			.formLogin()
				.loginPage("/login-form")
				.loginProcessingUrl("/authenticateTheUser")
				.permitAll()
			.and()
			.logout()
			.permitAll()
			.and().exceptionHandling().accessDeniedPage("/access-denied");
		
	}
	
	
	
	
	
	
	

}























