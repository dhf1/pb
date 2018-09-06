package com.hades.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbArticle;
import com.hades.pojo.PbCategory;
import com.hades.pojo.PbCategoryResult;
import com.hades.pojo.PbSetting;
import com.hades.pojo.PbSystemInfo;
import com.hades.pojo.Result;
import com.hades.service.AdminService;
import com.hades.service.DataService;

@Controller
@RequestMapping("/admin")
public class DataController {
	@Autowired
	@Qualifier("dataService")
	private DataService dataService;
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	@RequestMapping("/add_article.action")
	public String addArticle(MultipartHttpServletRequest request) throws Exception{
		//拿到name为files的文件上传表单内容（支持多文件）
		MultipartFile file = request.getFile("picture");
		String fullName = null;
		
	    String title = request.getParameter("title");
	    String author = request.getParameter("author");
	    Boolean show = !(request.getParameter("show")==null);
	    Integer click = Integer.valueOf(request.getParameter("click"));
	    Boolean recommend = !(request.getParameter("recommend")==null);
	    String information = request.getParameter("information");
	    Integer category = Integer.valueOf(request.getParameter("category"));
	    
	    //获取项目真实路径
	    String path = request.getSession().getServletContext().getRealPath("/WEB-INF");
	    String uploadPath = path + File.separator + "uploads";
	    File filePath = new File(uploadPath);
	    if(!filePath.exists() || !filePath.isDirectory()){
	        filePath.mkdirs();
	    }
	    
	    if(!file.isEmpty()){
	    	String picName = UUID.randomUUID().toString();
    	    String oriName = file.getOriginalFilename();
    	    String extName = oriName.substring(oriName.lastIndexOf("."));
            File tempFile = new File(filePath + File.separator + picName+extName);
            FileOutputStream fos = new FileOutputStream(tempFile);
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            bos.write(file.getBytes());
            bos.close();
            fos.close();
            fullName=picName+extName;
        }
	    String create_time=request.getParameter("create_time");
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    Date updatetime=null;
		try {
			updatetime = sdf.parse(create_time);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    PbArticle pb_article=new PbArticle();
	    pb_article.setPicture(fullName);
	    pb_article.setTitle(title);
	    pb_article.setAuthor(author);
	    pb_article.setUpdatetime(updatetime);
	    pb_article.setShowPaper(show);
	    pb_article.setRecommend(recommend);
	    pb_article.setInformation(information);
	    pb_article.setId(null);
	    pb_article.setClick(click);
	    pb_article.setCategory(category);
	    int i = dataService.addArticle(pb_article);
	    return "redirect:/admin/get_articleList_all";
	}
	
	@RequestMapping("/get_articleList_all")
	public String getArticleList(
			@RequestParam(value="category_id",defaultValue="-1") Integer category_id,
			@RequestParam(value="start",defaultValue="0") int start,
			@RequestParam(value="length",defaultValue="10") int length,
			@RequestParam(value="draw",defaultValue="0") int draw,
			Model model){
		PbAdminDataListResult pbArticles = dataService.getArticleList(category_id,start,length,draw);
		model.addAttribute("pbArticles", pbArticles);
		model.addAttribute("category_id", category_id);
		return "admin/nzcms_4";
	}
	
	@RequestMapping("/modify_article")
	public String modifyArticle(@RequestParam("id")Integer id,Model model){
		PbArticle article = dataService.getArticle(id);
		List<PbCategoryResult> pbCategoryResults = dataService.getCategoryResultList();
		model.addAttribute("categoryList",pbCategoryResults);
		model.addAttribute("article",article);
		return "admin/nzcms_1";
	}
	
	@RequestMapping("/del_article")
	public String delArticle(@RequestParam("article_id") Integer article_id){
		int i = dataService.delArticle(article_id);
		return "redirect:/admin/get_articleList_all";
	}
	
	@RequestMapping("/update_article")
	public String updateArticle(MultipartHttpServletRequest request,Model model) throws IOException{
		//拿到name为files的文件上传表单内容（支持多文件）
		MultipartFile file = request.getFile("picture");
		String fullName = null;
		
		String id = request.getParameter("id");
	    String title = request.getParameter("title");
	    String author = request.getParameter("author");
	    Boolean show = !(request.getParameter("show")==null);
	    Integer click = Integer.valueOf(request.getParameter("click"));
	    Boolean recommend = !(request.getParameter("recommend")==null);
	    String information = request.getParameter("information");
	    Integer category = Integer.valueOf(request.getParameter("category"));
	    
	    //获取项目真实路径
	    String path = request.getSession().getServletContext().getRealPath("/WEB-INF");
	    String uploadPath = path + File.separator + "uploads";
	    File filePath = new File(uploadPath);
	    if(!filePath.exists() || !filePath.isDirectory()){
	        filePath.mkdirs();
	    }
	    
	    if(!file.isEmpty()){
	    	String picName = UUID.randomUUID().toString();
    	    String oriName = file.getOriginalFilename();
    	    String extName = oriName.substring(oriName.lastIndexOf("."));
            File tempFile = new File(filePath + File.separator + picName+extName);
            FileOutputStream fos = new FileOutputStream(tempFile);
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            bos.write(file.getBytes());
            bos.close();
            fos.close();
            fullName=picName+extName;
        }
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    PbArticle pb_article=new PbArticle();
	    pb_article.setPicture(fullName);
	    pb_article.setTitle(title);
	    pb_article.setAuthor(author);
	    pb_article.setShowPaper(show);
	    pb_article.setRecommend(recommend);
	    pb_article.setInformation(information);
	    pb_article.setId(Integer.valueOf(id));
	    pb_article.setClick(click);
	    pb_article.setCategory(category);
	    Result rs = dataService.updateArticle(pb_article);
		model.addAttribute("rs",rs);
		return "redirect:/admin/information";
	}
	
	//查栏目，栏目下有多少记录
	@RequestMapping("/get_categoryResultList/{num}")
	public String getCategoryResultList(Model model,@PathVariable int num){
		List<PbCategoryResult> pbCategoryResults = dataService.getCategoryResultList();
		model.addAttribute("pbCategoryResults", pbCategoryResults);
		return "admin/nzcms_"+num;
	}
	
	@RequestMapping("/add_category")
	public String addCategory(@RequestParam("categoryname") String categoryname,
			@RequestParam("order") Integer sort,
			@RequestParam("property") Integer property){
		PbCategory pb_category=new PbCategory();
		pb_category.setCategoryname(categoryname);
		pb_category.setSort(sort);
		pb_category.setProperty(property);
		int i = dataService.addCategory(pb_category);
		return "redirect:/admin/get_categoryResultList";
	}
	
	@RequestMapping("/del_category")
	public String delCategory(@RequestParam("category_id") int category_id){
		int i = dataService.delCategory(category_id);
		return "redirect:/admin/get_categoryResultList";
	}
	
	@RequestMapping("/update_category")
	public String updateCategory(
			@RequestParam("id") Integer id,
			@RequestParam("categoryname") String categoryname,
			@RequestParam("order") Integer sort,
			@RequestParam("property") Integer property,
			Model model){
		PbCategory pb_category=new PbCategory();
		pb_category.setId(id);
		pb_category.setCategoryname(categoryname);
		pb_category.setSort(sort);
		pb_category.setProperty(property);
		Result result = dataService.updateCategory(pb_category);
		model.addAttribute("result",result);
		return "redirect:/admin/get_categoryResultList/2";
	}
	
	@RequestMapping("/get_setting")
	public String getSetting(Model model){
		PbSetting setting = adminService.getSetting();
		model.addAttribute("setting",setting);
		return "admin/web2";
	}
	
	@RequestMapping("/update_setting")
	public String updateSetting(
			@RequestParam("title")String title,
			@RequestParam(value="switch",defaultValue="1")Boolean pb_switch,
			@RequestParam(value="close_display",defaultValue="")String close_display,
			@RequestParam("describe")String describe,
			@RequestParam("bottom")String bottom,
			@RequestParam("keywords")String keywords,
			Model model){
		PbSetting pbSetting = new PbSetting();
		pbSetting.setId(1);
		pbSetting.setPbTitle(title);
		pbSetting.setPbCloseDisplay(close_display);
		pbSetting.setPbSwitch(pb_switch);
		pbSetting.setPbBottom(bottom);
		pbSetting.setPbKeyword(keywords);
		pbSetting.setPbDescribe(describe);
		int i = adminService.updateSetting(pbSetting);
		return "redirect:/admin/get_setting";
	}
	
	@RequestMapping("/getSystemInfo")
	public String getSystemInfo(HttpServletRequest request,
			HttpSession session,Model model) {
		//用于获取客户端IP地址
		String remoteAddr = request.getRemoteAddr();
		//用于获取客户端名字
		String remoteHost = request.getRemoteHost();
		//用于获取服务器的名字
		String serverName = request.getServerName();	
		//用于获取服务器的端口号
		int serverPort = request.getServerPort();
		//用于返回Session对象在服务器端的编号
		String id = session.getId();
		//session变量的个数
		//服务器时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String server_time = df.format(new Date());// new Date()为获取当前系统时间
		
		PbSystemInfo pbSystemInfo=new PbSystemInfo();
		pbSystemInfo.setRemoteAddr(remoteAddr);
		pbSystemInfo.setRemoteHost(remoteHost);
		pbSystemInfo.setServerName(serverName);
		pbSystemInfo.setServerPort(serverPort);
		pbSystemInfo.setId(id);
		pbSystemInfo.setServer_time(server_time);
		model.addAttribute("pbSystemInfo",pbSystemInfo);
		return "admin/web4";
	}
	@RequestMapping("/delMultipleArticle")
	String delMultipleArticle(@RequestParam("id")Integer[] id){
		for(Integer i : id){
			dataService.delArticle(i);
		}
		return "redirect:/admin/get_articleList_all";
	}
}
