package com.hades.dao.mapper;

import com.hades.pojo.PbSetting;
import com.hades.pojo.PbSettingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PbSettingMapper {
    long countByExample(PbSettingExample example);

    int deleteByExample(PbSettingExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PbSetting record);

    int insertSelective(PbSetting record);

    List<PbSetting> selectByExample(PbSettingExample example);

    PbSetting selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PbSetting record, @Param("example") PbSettingExample example);

    int updateByExample(@Param("record") PbSetting record, @Param("example") PbSettingExample example);

    int updateByPrimaryKeySelective(PbSetting record);

    int updateByPrimaryKey(PbSetting record);
}