package com.hades.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hades.dao.mapper.PbArticleMapper;
import com.hades.dao.mapper.PbCategoryMapper;
import com.hades.pojo.PbAllArticle;
import com.hades.pojo.PbArticle;
import com.hades.pojo.PbArticleExample;
import com.hades.pojo.PbArticleExample.Criteria;
import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbCategory;
import com.hades.pojo.PbCategoryExample;
import com.hades.pojo.PbCategoryResult;
import com.hades.pojo.Result;
import com.hades.service.DataService;

@Service("dataService")
public class DataServiceImpl implements DataService{
	
	@Autowired
	private PbArticleMapper pbArticleMapper;
	@Autowired
	private PbCategoryMapper pbCategoryMapper;

	@Override
	public int addArticle(PbArticle pb_article) {
		return pbArticleMapper.insertSelective(pb_article);
	}
	@Override
	public PbAdminDataListResult getArticleList(int category_id,int start,int length,int draw) {
		PbArticleExample example=new PbArticleExample();
		example.setOrderByClause("updatetime DESC");
		PageHelper.startPage(draw+1, length);
		List<PbArticle> list;
		
		PbAdminDataListResult result = new PbAdminDataListResult();
		if(category_id==-1){
			list = pbArticleMapper.selectByExample(example);
		}else{
			Criteria criteria = example.createCriteria();
			criteria.andCategoryEqualTo(category_id);
			list = pbArticleMapper.selectByExample(example);	
		}
		System.out.println(list.size());
		PageInfo<PbArticle> pageInfo = new PageInfo<>(list);;
		result.setData(list);
		result.setDraw(draw);
		result.setTotal_page((int)(Math.ceil(pageInfo.getTotal()/(double)length)));
		result.setTotal(pageInfo.getTotal());
		return result;
	}
	@Override
	public int delArticle(int article_id) {
		return pbArticleMapper.deleteByPrimaryKey(article_id);
	}
	@Override
	public Result updateArticle(PbArticle pb_article) {
		String title = pb_article.getTitle();
		String author = pb_article.getAuthor();
		String information = pb_article.getInformation();
		if("".equals(title)||title==null){
			Result result=new Result();
			result.setResult("标题不能为空，修改失败！");
			return result;
		}
		if("".equals(author)||author==null){
			Result result=new Result();
			result.setResult("作者不能为空，修改失败！");
			return result;
		}
		if("".equals(information)||information==null){
			Result result=new Result();
			result.setResult("信息不能为空，修改失败！");
			return result;
		}
		int i = pbArticleMapper.updateByPrimaryKeySelective(pb_article);
		Result result=new Result();
		result.setResult("修改成功！");
		return result;
	}
	@Override
	public List<PbCategoryResult> getCategoryResultList() {
		//		PbCategoryExample exampleCategory=new PbCategoryExample();
//		exampleCategory.setOrderByClause("sort ASC");
//		List<PbCategory> pbCategorys = pbCategoryMapper.selectByExample(exampleCategory);
//		List<PbCategoryResult> pbCategoryResults = new ArrayList<PbCategoryResult>();
//		for(PbCategory pbCategory:pbCategorys){
//			PbArticleExample example=new PbArticleExample();
//			Criteria criteria = example.createCriteria();
//			criteria.andCategoryEqualTo(pbCategory.getId());
//			List<PbArticle> pbArticles = pbArticleMapper.selectByExample(example);
//			long count = pbArticles.size();
//			PbCategoryResult rs = new PbCategoryResult();
//			rs.setPbCategory(pbCategory);
//			rs.setCount(count);
//			pbCategoryResults.add(rs);
			PbCategoryExample pbCategoryExample=new PbCategoryExample();
			List<PbCategory> pbCategorys = pbCategoryMapper.selectByExample(pbCategoryExample);
			List<PbCategoryResult> pbCategoryResults=new ArrayList<PbCategoryResult>();
			for(PbCategory pbCategory:pbCategorys){
				Integer id = pbCategory.getId();
				PbArticleExample pbArticleExample=new PbArticleExample();
				Criteria criteria = pbArticleExample.createCriteria();
				criteria.andCategoryEqualTo(id);
				List<PbArticle> pbArticles = pbArticleMapper.selectByExample(pbArticleExample);
				int count = pbArticles.size();
				PbCategoryResult pbCategoryResult=new PbCategoryResult();
				pbCategoryResult.setCount(count);
				pbCategoryResult.setPbCategory(pbCategory);
				pbCategoryResults.add(pbCategoryResult);
			}
			return pbCategoryResults;
//		}
		
	}
	@Override
	public int addCategory(PbCategory pb_category) {
		PbCategoryExample example = new PbCategoryExample();
		com.hades.pojo.PbCategoryExample.Criteria criteria = example.createCriteria();
		criteria.andSortGreaterThanOrEqualTo(pb_category.getSort());
		List<PbCategory> pbList=pbCategoryMapper.selectByExample(example);
		
		for(PbCategory p :pbList){
			p.setSort(p.getSort()+1);
			pbCategoryMapper.updateByPrimaryKeySelective(p);
		}
		return pbCategoryMapper.insertSelective(pb_category);
	}
	@Override
	public int delCategory(int category_id) {
		return pbCategoryMapper.deleteByPrimaryKey(category_id);
	}
	@Override
	public Result updateCategory(PbCategory pb_category) {
		String categoryname = pb_category.getCategoryname();
		
		if("".equals(categoryname)||categoryname==null){
			Result result=new Result();
			result.setResult("名称不能为空，修改失败！");
			return result;
		}
		
		PbCategoryExample example = new PbCategoryExample();
		com.hades.pojo.PbCategoryExample.Criteria criteria = example.createCriteria();
		criteria.andSortGreaterThanOrEqualTo(pb_category.getSort());
		List<PbCategory> pbList=pbCategoryMapper.selectByExample(example);
		
		for(PbCategory p :pbList){
			p.setSort(p.getSort()+1);
			pbCategoryMapper.updateByPrimaryKeySelective(p);
		}
		
		int i = pbCategoryMapper.updateByPrimaryKey(pb_category);
		Result result=new Result();
		result.setResult("修改成功！");
		return result;
	}
	@Override
	public PbArticle getArticle(Integer id) {
		PbArticle article = pbArticleMapper.selectByPrimaryKey(id);
		return article;
	}
	@Override
	public PbCategory getCategoryById(Integer category_id) {
		return pbCategoryMapper.selectByPrimaryKey(category_id);
	}
	@Override
	public List<PbAllArticle> getIndexArticleWithCategory() {
		List<PbAllArticle> pbAllArticle = new ArrayList<PbAllArticle>();
		PbCategoryExample example = new PbCategoryExample();
		List<PbCategory> pbCategorys = pbCategoryMapper.selectByExample(example);
		List<PbCategory> pbCategoryList = new ArrayList<PbCategory>();
		/*for(int i =0;i<4;i++){
			if(pbCategorys.size()<4){
				pbCategoryList = pbCategorys;
				break;
			}
			pbCategoryList.add(pbCategorys.get(i));
		}*/
		if(pbCategorys.size()<=4){
			pbCategoryList=pbCategorys;
		}else{
			for(int i=0;i<4;i++){
				pbCategoryList.add(pbCategorys.get(i));
			}
		}
		
		for(PbCategory pc : pbCategoryList){
			PbAllArticle article_all = new PbAllArticle();
			article_all.setCategoryid(pc.getId());
			article_all.setProperty(pc.getProperty());
			article_all.setCategoryname(pc.getCategoryname());
			PbArticleExample exampleArticle = new PbArticleExample();
			exampleArticle.setOrderByClause("updatetime DESC");
			com.hades.pojo.PbArticleExample.Criteria criteria = exampleArticle.createCriteria();
			criteria.andCategoryEqualTo(pc.getId());
			List<PbArticle> pbArticleList = pbArticleMapper.selectByExample(exampleArticle);
			
			List<PbArticle> pbArticles=new ArrayList<PbArticle>();
			if(pbArticleList.size()>7){
				for(int i=0;i<7;i++){
					pbArticles.add(pbArticleList.get(i));
				}
			}else{
				pbArticles=pbArticleList;
			}
			article_all.setArticles(pbArticles);
			pbAllArticle.add(article_all);
		}
		
		return pbAllArticle;
	}
	@Override
	public PbCategory getCategoryByArticleCategory(Integer category) {
		return pbCategoryMapper.selectByPrimaryKey(category);
	}
	@Override
	public List<PbArticle> getRecommendArticleList(int len) {
		PbArticleExample example=new PbArticleExample();
		example.setOrderByClause("updatetime DESC");
		Criteria criteria = example.createCriteria();
		criteria.andRecommendEqualTo(true);
		List<PbArticle> pbCommendArticles = pbArticleMapper.selectByExample(example);
		List<PbArticle> pbCArticles = new ArrayList<PbArticle>();
		/*if(pbCommendArticles.size()>len){
			for(int i=0;i<len;i++){
				pbCArticles.add(pbCommendArticles.get(i));
			}
			return pbCArticles;
		}
		return pbCommendArticles;*/
		if(pbCommendArticles.size()>len){
			for(int i=0;i<len;i++){
				pbCArticles.add(pbCommendArticles.get(i));
			}
		}else{
			pbCArticles=pbCommendArticles;
		}
		return pbCArticles;
	}
	@Override
	public List<PbArticle> getArticleList(int category_id) {
		PbArticleExample example=new PbArticleExample();
		example.setOrderByClause("updatetime DESC");
		Criteria criteria = example.createCriteria();
		criteria.andCategoryEqualTo(category_id);
		return pbArticleMapper.selectByExample(example);
	}
	@Override
	public List<PbArticle> getCarouselArticle() {
		PbArticleExample example=new PbArticleExample();
		example.setOrderByClause("updatetime DESC");
		List<PbArticle> tmpArticles = pbArticleMapper.selectByExample(example);
		List<PbArticle> articleList = new ArrayList<PbArticle>();
		int count=0;
		for(PbArticle pa :tmpArticles){
			if(count==6) break;
			if(pa.getPicture()!=null){
				articleList.add(pa);
				count++;
			}
		}
		return articleList;
	}

}
