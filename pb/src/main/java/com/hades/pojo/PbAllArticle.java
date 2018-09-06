package com.hades.pojo;

import java.util.List;

public class PbAllArticle {
	private String categoryname;
	private Integer categoryid;
	private Integer property;
	
	public Integer getProperty() {
		return property;
	}
	public void setProperty(Integer property) {
		this.property = property;
	}
	private List<PbArticle> articles;
	
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public Integer getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}
	public List<PbArticle> getArticles() {
		return articles;
	}
	public void setArticles(List<PbArticle> articles) {
		this.articles = articles;
	}
}
