package com.hades.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hades.pojo.PbCategoryResult;
import com.hades.service.DataService;

@Controller
@RequestMapping("/admin")
public class PageAdminController {
	@Autowired
	private DataService dataService;
	
	@RequestMapping("/index")
	public String getIndex(){
		return "admin/index";
	}
	@RequestMapping("/web4")
	public String getWeb4(){
		return "admin/web4";
	}
	
	@RequestMapping("/add_article")
	public String getAddArticle(){
		return "admin/add_article";
	}
	@RequestMapping("/nzcms_1")
	public String getNzcms1(Model model){
		List<PbCategoryResult> pbCategoryResults = dataService.getCategoryResultList();
		model.addAttribute("categoryList",pbCategoryResults);
		return "admin/nzcms_1";
	}
	@RequestMapping("/category_manage")
	public String getCategoryManage(){
		return "admin/category_manage";
	}
	@RequestMapping("/nzcms_2")
	public String getNzcms2(){
		return "admin/nzcms_2";
	}
	@RequestMapping("/manage_by_class")
	public String getManagerByClass(){
		return "admin/manage_by_class";
	}
	@RequestMapping("/nzcms_3")
	public String getNzcms3(){
		return "admin/nzcms_3";
	}
	@RequestMapping({"/all_information","/information"})
	public String getAllInformation(){
		return "admin/all_information";
	}
	@RequestMapping("/nzcms_4")
	public String getNzcms4(){
		return "admin/nzcms_4";
	}
	@RequestMapping("/manager")
	public String getManager(){
		return "admin/manager";
	}
	@RequestMapping("/web1")
	public String getWeb1(){
		return "admin/web1";
	}
	@RequestMapping("/setting")
	public String getSetting(){
		return "admin/setting";
	}
	@RequestMapping("/web2")
	public String getWeb2(){
		return "admin/web2";
	}
	@RequestMapping("/setting_friendship")
	public String getSettingFriendShip(){
		return "admin/setting_friendship";
	}
	@RequestMapping("/web3")
	public String getWeb3(){
		return "admin/web3";
	}
	@RequestMapping("/login")
	public String getLogin(){
		return "admin/login";
	}
}
