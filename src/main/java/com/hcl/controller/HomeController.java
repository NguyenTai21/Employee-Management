package com.hcl.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.domain.Account;
import com.hcl.domain.Employee;
import com.hcl.service.AccountService;
import com.hcl.service.EmployeeService;

@Controller
public class HomeController {

	public static String userIn;
	@Autowired
	EmployeeService service;
	
	@Autowired
	AccountService accservice;
	
	@RequestMapping(value="/home")
	public ModelAndView home(@ModelAttribute("account") Account account,HttpServletRequest request) {
		System.out.println("Session "+(String)request.getParameter("username"));
		String usernameSession = (String)request.getParameter("username");
		String username =  account.getUsername();
		String password =  account.getPassword();
		if(username == null) {
			username = "";
		}
		if(password == null) {
			password = "";
		}
		System.out.println("U: "+username+" P: "+password);
		if(!accservice.checkAccountExist(username) && !accservice.checkAccountExist(usernameSession) ) {

			 if(username == "" || password == "") {
				ModelAndView mav = new ModelAndView("login");
				mav.addObject("message","Username or password can't be empty!!!");
				
				return mav;
			}
			ModelAndView mav = new ModelAndView("login");
			mav.addObject("message","Invalid username or password!!!");
			
			return mav;
		}
		
			
				
		else if(accservice.checkLogin(username, password) == null && usernameSession == null) {
			ModelAndView mav = new ModelAndView("login");
			mav.addObject("message","Invalid username or password!!!");
			
			return mav;
		}	
		
		
			
		else if(accservice.isAdmin(username) || accservice.isAdmin(usernameSession)) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("home");
			HttpSession session = request.getSession(true);
			session.setAttribute("username",username);
			session.setAttribute("password",password);
			mav.addObject("empList", service.getEmployees());
			mav.addObject("session",session);
			userIn = username;
			return mav;	
		}else {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("profile");
			Account acc = accservice.findByUsername(username);
			mav.addObject("employee", acc.getEmployee());
			HttpSession session = request.getSession(true);
			session.setAttribute("username",username);
			session.setAttribute("password",password);
			mav.addObject("session",session);
			userIn = username;
			return mav;
			
		}
		
		
	}
	
	
	@RequestMapping("/")
	public ModelAndView backToLogin() {
		ModelAndView mav = new ModelAndView("login");
		Account account = new Account();
		mav.addObject("account",account);
		return mav;
	}
	
	@RequestMapping("/save")
	public ModelAndView saveEmployee(@ModelAttribute("employee") Employee emp,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println(emp.toString());
		mav.setViewName("redirect:/home");
		mav.addObject("username",userIn);
		service.saveEmployee(emp);
		return mav;
	}
	@RequestMapping(value = "/updateEmp/{eno}", method = RequestMethod.POST)
	public ModelAndView updateEmployee(Employee emp, @PathVariable int eno,HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("redirect:/home");
		
		System.out.println(emp.toString());
		mav.addObject("username",userIn);
		emp.setEno(eno);
		System.out.println(service.saveEmployee(emp));
		return mav;
	}

	
	@RequestMapping("/edit")
	public ModelAndView saveEmployee(@RequestParam int eno) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("edit");
		mav.addObject("employee",service.getEmpById(eno));
		return mav;
	}
	
	
	@RequestMapping("/delete")
	public ModelAndView deleteEmployee(@RequestParam int eno) {
		ModelAndView mav = new ModelAndView("redirect:/home");
		mav.addObject("username",userIn);
		service.deleteEmployee(eno);
		return mav;
	}
	
	@RequestMapping("/create")
	public ModelAndView createEmployee(@ModelAttribute("employee") Employee emp) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("create");
		return mav;
	}
	
	
}