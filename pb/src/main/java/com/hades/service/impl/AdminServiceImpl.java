package com.hades.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hades.common.MD5;
import com.hades.dao.mapper.PbAdminMapper;
import com.hades.dao.mapper.PbSettingMapper;
import com.hades.pojo.PbAdmin;
import com.hades.pojo.PbAdminDataListResult;
import com.hades.pojo.PbAdminExample;
import com.hades.pojo.PbAdminExample.Criteria;
import com.hades.pojo.PbSetting;
import com.hades.pojo.PbUpdateAdminResult;
import com.hades.pojo.Result;
import com.hades.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private PbAdminMapper pbAdminMapper;
	
	@Autowired
	private PbSettingMapper pbSettingMapper;
	
	@Override
	public PbAdmin checkAdminLogin(String username, String password) {
		String password2 = MD5.getMD5(password);
		PbAdminExample pbAdminExample=new PbAdminExample();
		Criteria criteria = pbAdminExample.createCriteria();
		criteria.andAdminnameEqualTo(username);
		criteria.andPasswordEqualTo(password2);
		List<PbAdmin> pbAdmins = pbAdminMapper.selectByExample(pbAdminExample);
		PbAdmin pbAdmin=null;
		if(!pbAdmins.isEmpty()){
			pbAdmin = pbAdmins.get(0);
			//Controller返回JSON格式数据的时候密码必须置空，否则在console中能看见密码
			pbAdmin.setPassword(null);
			return pbAdmin;
		}
		return pbAdmin;
	}

	@Override
	public PbAdminDataListResult getAdminList(int start,int length,int draw) {
		PbAdminExample pbAdminExample=new PbAdminExample();
		PageHelper.startPage(draw+1, length);
		List<PbAdmin> pbAdmins = pbAdminMapper.selectByExample(pbAdminExample);
		PageInfo<PbAdmin> pageInfo = new PageInfo<>(pbAdmins);
		PbAdminDataListResult result = new PbAdminDataListResult();
		result.setData(pbAdmins);
		result.setDraw(draw);
		
		result.setTotal_page((int)(Math.ceil(pageInfo.getTotal()/(double)length)));
		result.setTotal(pageInfo.getTotal());
		return result;
	}

	@Override
	public Result addAdmin(PbAdmin pb_admin) {
		String adminname = pb_admin.getAdminname();
		String password = pb_admin.getPassword();
		String password1=MD5.getMD5(password);
		pb_admin.setPassword(password1);
		if("".equals(adminname)||adminname==null){
			Result result=new Result();
			result.setResult("用户名不能为空，添加失败！");
			return result;
		}
		if("".equals(password1)||password1==null){
			Result result=new Result();
			result.setResult("密码不能为空，添加失败！");
			return result;
		}
		int i = pbAdminMapper.insert(pb_admin);
		Result result=new Result();
		result.setResult("添加成功！");
		return result;
	}

	@Override
	public Result updateAdmin(PbAdmin pb_admin) {
		String adminname = pb_admin.getAdminname();
		String password = pb_admin.getPassword();
		String password1=MD5.getMD5(password);
		pb_admin.setPassword(password1);
		
		if("".equals(adminname)||adminname==null){
			Result result=new Result();
			result.setResult("用户名不能为空，修改失败！");
			return result;
		}
		if("".equals(password1)||password1==null){
			Result result=new Result();
			result.setResult("密码不能为空，修改失败！");
			return result;
		}
		int i = pbAdminMapper.updateByPrimaryKey(pb_admin);
		Result result=new Result();
		result.setResult("修改成功！");
		return result;
	}

	@Override
	public int delAdmin(Integer id) {
		return pbAdminMapper.deleteByPrimaryKey(id);
	}

	@Override
	public PbSetting getSetting() {
		PbSetting pbSetting = pbSettingMapper.selectByPrimaryKey(1);
		return pbSetting;
	}

	@Override
	public int updateSetting(PbSetting pbSetting) {
		int i = pbSettingMapper.updateByPrimaryKeySelective(pbSetting);
		return i;
	}

}
