package com.good.cus.service;

import java.text.ParseException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.sys.ServiceException;

public interface BusiManageService {
	
	/**
	 * 图1：营销进度
	 * @param staffId
	 * @return
	 * @throws ServiceException
	 * */
	public List<MktTaskInfoPo> MktTaskInfoForTable(@Param("staffId") String staffId)  throws ServiceException;
	
	/**
	 * 图2：任务审批图
	 * @param staffId
	 * @return
	 * @throws ServiceException
	 * */
	public List<List<String>> PubVifyListPoForTable(@Param("createUser") String createUser)  throws ServiceException, ParseException;

	/**
	 * 图3：业绩比较图
	 * @param staffId
	 * @return
	 * @throws ServiceException
	 * */
	public List<MktStfPerfPo> MktStfPerfPoForTable(@Param("staffId") String staffId)  throws ServiceException;
	
    /**
     * 公告栏
     * 
     * @param staffId
     * @return
     * @throws ServiceException
     */
    public List<String> message(String staffId) throws ServiceException;
	
}
