package com.aspect;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
@Aspect
public class LoginAspect {
	
	@Pointcut("execution(* com.controller.UserController.login(..))")
	public void login(){};
	@Pointcut("execution(* com.service.UserService.regist(..))")
	public void regist(){};
	
	
	@Before("login()")
	public void loginAspect(){
		System.out.println("µÇÂ½ÁË");
		
	}
	

}
