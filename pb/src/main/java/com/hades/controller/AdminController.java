package com.hades.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hades.pojo.PbAdmin;
import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbUpdateAdminResult;
import com.hades.pojo.Result;
import com.hades.service.AdminService;
import com.mysql.fabric.xmlrpc.base.Array;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	@RequestMapping("/add_admin")
	public String addAdmin(@RequestParam("adminname") String adminname,
			@RequestParam("password") String password,Model model){
		PbAdmin pb_admin=new PbAdmin();
		pb_admin.setAdminname(adminname);
		pb_admin.setPassword(password);
		Result rs=adminService.addAdmin(pb_admin);
		model.addAttribute("rs",rs);
		return "forward:/admin/get_adminList";
	}
	
	@RequestMapping("/check_adminLogin")
	public String checkAdminLogin(@RequestParam("adminname") String adminname,
			@RequestParam("password") String password,
			HttpSession session){
		PbAdmin pbAdmin = adminService.checkAdminLogin(adminname, password);
		if(pbAdmin!=null){
			session.setAttribute("message", null);
			session.setAttribute("pbAdmin", pbAdmin);
			return "redirect:/admin/index";
		}else{
			session.setAttribute("message", "1");
			return "redirect:/admin/login";
		}
	}
	
	@RequestMapping("/get_adminList")
	public String getAdminList(Model model,@RequestParam(value="start",defaultValue="0")int start,@RequestParam(value="length",defaultValue="10")int length,@RequestParam(value="draw",defaultValue="0")int draw){
		PbAdminDataListResult pbAdmins = adminService.getAdminList(start,length,draw);
		model.addAttribute("pbAdmins", pbAdmins);
		return "forward:/admin/web1";
	}

	@RequestMapping("/update_admin")
	public String updateAdmin(@RequestParam("id")Integer id,@RequestParam("adminname") String adminname,
			@RequestParam("password") String password,
			HttpSession session,
			Model model){
		PbAdmin pbAdmin=new PbAdmin();
		pbAdmin.setAdminname(adminname);
		pbAdmin.setPassword(password);
		pbAdmin.setId(id);
		Result rs = adminService.updateAdmin(pbAdmin);
		session.setAttribute("pbAdmin", pbAdmin);
		model.addAttribute("pbUpdateAdminResult", rs);
		return "redirect:/admin/get_adminList";
	}
	
	@RequestMapping("/del_admin")
	public String delAdmin(@RequestParam("id") Integer id){
		int i = adminService.delAdmin(id);
		return "redirect:/admin/get_adminList";
	}
}
