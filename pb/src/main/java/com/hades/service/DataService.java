package com.hades.service;

import java.util.List;

import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbAllArticle;
import com.hades.pojo.PbArticle;
import com.hades.pojo.PbCategory;
import com.hades.pojo.PbCategoryResult;
import com.hades.pojo.Result;

public interface DataService {
	int addArticle(PbArticle pb_article);
	PbAdminDataListResult getArticleList(int category_id,int start,int length,int draw);
	int delArticle(int article_id);
	Result updateArticle(PbArticle pb_article);
	PbArticle getArticle(Integer id);
	
	//此处有修改
	List<PbCategoryResult> getCategoryResultList();
	int addCategory(PbCategory pb_category);
	int delCategory(int category_id);
	Result updateCategory(PbCategory pb_category);
	PbCategory getCategoryById(Integer category_id);
	List<PbAllArticle> getIndexArticleWithCategory();
	//此处有修改
	PbCategory getCategoryByArticleCategory(Integer category);
	List<PbArticle> getRecommendArticleList(int len);
	List<PbArticle> getArticleList(int category_id);
	List<PbArticle> getCarouselArticle();
	
}
