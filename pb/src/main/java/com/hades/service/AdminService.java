package com.hades.service;

import com.hades.pojo.PbAdmin;
import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbSetting;
import com.hades.pojo.PbUpdateAdminResult;
import com.hades.pojo.Result;

public interface AdminService {
	PbAdmin checkAdminLogin(String username,String password);
	PbAdminDataListResult getAdminList(int start,int length,int draw);
	Result addAdmin(PbAdmin pb_admin);
	//此处有修改
	Result updateAdmin(PbAdmin pb_admin);
	int delAdmin(Integer id);
	
	PbSetting getSetting();
	int updateSetting(PbSetting pbSetting);
}
