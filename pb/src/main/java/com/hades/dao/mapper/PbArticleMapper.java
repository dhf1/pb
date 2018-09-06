package com.hades.dao.mapper;

import com.hades.pojo.PbArticle;
import com.hades.pojo.PbArticleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PbArticleMapper {
    long countByExample(PbArticleExample example);

    int deleteByExample(PbArticleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PbArticle record);

    int insertSelective(PbArticle record);

    List<PbArticle> selectByExampleWithBLOBs(PbArticleExample example);

    List<PbArticle> selectByExample(PbArticleExample example);

    PbArticle selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PbArticle record, @Param("example") PbArticleExample example);

    int updateByExampleWithBLOBs(@Param("record") PbArticle record, @Param("example") PbArticleExample example);

    int updateByExample(@Param("record") PbArticle record, @Param("example") PbArticleExample example);

    int updateByPrimaryKeySelective(PbArticle record);

    int updateByPrimaryKeyWithBLOBs(PbArticle record);

    int updateByPrimaryKey(PbArticle record);
}