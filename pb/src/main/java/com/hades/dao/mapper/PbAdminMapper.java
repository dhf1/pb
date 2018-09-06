package com.hades.dao.mapper;

import com.hades.pojo.PbAdmin;
import com.hades.pojo.PbAdminExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PbAdminMapper {
    long countByExample(PbAdminExample example);

    int deleteByExample(PbAdminExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PbAdmin record);

    int insertSelective(PbAdmin record);

    List<PbAdmin> selectByExample(PbAdminExample example);

    PbAdmin selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PbAdmin record, @Param("example") PbAdminExample example);

    int updateByExample(@Param("record") PbAdmin record, @Param("example") PbAdminExample example);

    int updateByPrimaryKeySelective(PbAdmin record);

    int updateByPrimaryKey(PbAdmin record);
}