package com.hades.dao.mapper;

import com.hades.pojo.PbProperty;
import com.hades.pojo.PbPropertyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PbPropertyMapper {
    long countByExample(PbPropertyExample example);

    int deleteByExample(PbPropertyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PbProperty record);

    int insertSelective(PbProperty record);

    List<PbProperty> selectByExample(PbPropertyExample example);

    PbProperty selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PbProperty record, @Param("example") PbPropertyExample example);

    int updateByExample(@Param("record") PbProperty record, @Param("example") PbPropertyExample example);

    int updateByPrimaryKeySelective(PbProperty record);

    int updateByPrimaryKey(PbProperty record);
}