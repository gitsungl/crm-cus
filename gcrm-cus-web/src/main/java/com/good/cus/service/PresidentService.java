package com.good.cus.service;

import java.util.List;
import java.util.Map;

import com.good.sys.ServiceException;

public interface PresidentService {

	    /**
	     * 营销业绩趋势图
	     * 
	     * @param staffId
	     * @return
	     * @throws ServiceException
	     */
	    public  Map<String,List<String>> performance(String staffId) throws ServiceException;

	    /**
	     * 未完成营销任务
	     * 
	     * @param staffId
	     * @return
	     * @throws ServiceException
	     */
	    public Map<String, List<String>> unfinished(String staffId) throws ServiceException;

	    /**
	     * 客户存款变动排名
	     * 
	     * @param staffId
	     * @return
	     * @throws ServiceException
	     */
	    public List<Map<String, String>> pubDpsChg(String staffId) throws ServiceException;

	    /**
	     * 客户贷款变动排名
	     * 
	     * @param staffId
	     * @return
	     * @throws ServiceException
	     */
	    public List<Map<String, String>> pubLoanChg(String staffId) throws ServiceException;


	    /**
	     * 业绩排名
	     * 
	     * @param staffId
	     * @return
	     * @throws ServiceException
	     */
	    public Map<String, List<String>> perfRanking(String staffId) throws ServiceException;

	    /**
	     * 公告栏
	     * 
	     * @param staffId
	     * @return
	     * @throws ServiceException
	     */
	    public List<String> message(String staffId) throws ServiceException;

		/**
		 * 分机构风险雷达图
		 * @return
		 */
		public Map<String,Object> termRadar();

	}

