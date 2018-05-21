package com.good.cus.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.PubVifyListPo;
import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;

public interface BusiManageDao {
	
	/**
	 * 图1：营销进度图
	 * 
	 * */
	List<MktTaskInfoPo> MktTaskInfoForTable(@Param("staffId") String staffId);
	
	/**
	 * 图2：任务审批图
	 * 
	 * */
	List<PubVifyListPo> PubVifyListPoForTable(@Param("createUser") String createUser);
	
	/**
	 * 图3：业绩比较图
	 * 
	 * */
	List<MktStfPerfPo> MktStfPerfPoForTable(@Param("staffId") String staffId);
	
	/**
	 * 公告
	 * 
	 */
	List<Map<String, String>> message(@Param("staffId") String staffId);
}
