package com.hybrid.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//모든 페이지에 접근시 로그인하도록 설정 (인증설정)
		auth.inMemoryAuthentication()
		.withUser("admin")
		.password("1234")
		.roles("ADMIN");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/index.jsp").permitAll()
		.antMatchers("/**").hasRole("ADMIN")
		.and()
		.formLogin()
		.loginPage("/login.jsp")
		.permitAll()
		.and()
		.logout()
		.logoutSuccessUrl("/index.jsp");
	}
	
}
