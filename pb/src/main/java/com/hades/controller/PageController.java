package com.hades.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbAllArticle;
import com.hades.pojo.PbArticle;
import com.hades.pojo.PbCategory;
import com.hades.pojo.PbCategoryResult;
import com.hades.pojo.PbSetting;
import com.hades.pojo.Result;
import com.hades.service.AdminService;
import com.hades.service.DataService;


@Controller
public class PageController {
	@Autowired
	@Qualifier("dataService")
	private DataService dataService;
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	@RequestMapping({"/index","/"})
	public String getIndex(
			@RequestParam(value="len",defaultValue="10")int len,
			Model model){
		List<PbCategoryResult> pbCategoryResults = dataService.getCategoryResultList();
		model.addAttribute("pbCategoryResults", pbCategoryResults);
		List<PbAllArticle> articleAllList = dataService.getIndexArticleWithCategory();
		model.addAttribute("articleAllList", articleAllList);
		List<PbArticle> recommendPbArticles = dataService.getRecommendArticleList(len);
		model.addAttribute("recommendPbArticles", recommendPbArticles);
		PbSetting pbSetting = adminService.getSetting();
		model.addAttribute("pbSetting", pbSetting);
		return "index";
	}

	@RequestMapping("/list")
	public String getList(@RequestParam("category_id") int category_id,
			@RequestParam("property") int property,
			@RequestParam(value="start",defaultValue="0") int start,
			@RequestParam(value="length",defaultValue="10") int length,
			@RequestParam(value="draw",defaultValue="0") int draw,
			Model model){
		List<PbCategoryResult> pbCategoryResults = dataService.getCategoryResultList();
		model.addAttribute("pbCategoryResults", pbCategoryResults);
		PbAdminDataListResult dataRsList = dataService.getArticleList(category_id,start,length,draw);
		model.addAttribute("pbArticles", dataRsList);
		PbCategory pbCategory = dataService.getCategoryById(category_id);
		model.addAttribute("pbCategory", pbCategory);
		List<PbArticle> recommendPbArticles = dataService.getRecommendArticleList(10);
		model.addAttribute("recommendPbArticles", recommendPbArticles);
		PbSetting pbSetting = adminService.getSetting();
		model.addAttribute("pbSetting", pbSetting);
		model.addAttribute("category_id",category_id);
		model.addAttribute("property",property);
		return "list";
	}
	
	@RequestMapping("/article")
	public String getArticle(
			@RequestParam("id") Integer id,
			Model model){
		List<PbCategoryResult> pbCategoryResults = dataService.getCategoryResultList();
		model.addAttribute("pbCategoryResults", pbCategoryResults);
		PbArticle pbArticle = dataService.getArticle(id);
		//此处有修改
		pbArticle.setClick(pbArticle.getClick()+1);
		dataService.updateArticle(pbArticle);
		//
		model.addAttribute("pbArticle", pbArticle);
		PbCategory pbCategory = dataService.getCategoryByArticleCategory(pbArticle.getCategory());
		model.addAttribute("pbCategory", pbCategory);
		PbSetting pbSetting = adminService.getSetting();
		model.addAttribute("pbSetting", pbSetting);
		return "article";
	}
	
	@RequestMapping("/pic_index")
	public String getPicIndex(
			Model model){
		return "pic_index";
	}
	
	@RequestMapping("/getCarouselArticle")
	public String getCarouselArticle(
			@RequestParam(value="type",defaultValue="1") int type,
			Model model){
		List<PbArticle> paList = dataService.getCarouselArticle();
		model.addAttribute("paList",paList);
		model.addAttribute("type",type);
		return "pic_index";
	}
}
