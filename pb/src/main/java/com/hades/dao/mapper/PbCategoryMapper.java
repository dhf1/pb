package com.hades.dao.mapper;

import com.hades.pojo.PbCategory;
import com.hades.pojo.PbCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PbCategoryMapper {
    long countByExample(PbCategoryExample example);

    int deleteByExample(PbCategoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PbCategory record);

    int insertSelective(PbCategory record);

    List<PbCategory> selectByExample(PbCategoryExample example);

    PbCategory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PbCategory record, @Param("example") PbCategoryExample example);

    int updateByExample(@Param("record") PbCategory record, @Param("example") PbCategoryExample example);

    int updateByPrimaryKeySelective(PbCategory record);

    int updateByPrimaryKey(PbCategory record);
}