package com.hades.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hades.pojo.PbAdmin;

@Controller
@RequestMapping("/admin")
public class LogoutController {
	@RequestMapping("/logout")
	public String exitAdmin(HttpSession session){
		session.setAttribute("pbAdmin", null);
		return "redirect:/admin/login";
	}
}
