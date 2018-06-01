package com.good.cus.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktTaskInfoPo;
import com.good.db.IPage;
import com.good.sys.ServiceException;
import com.good.sys.bean.Operator;

public interface MktTaskInfoService {
	
	/**
     * 营销任务列表
     * @param condition 查询条件Map
     * @param page 分页信息
     * @return  MktTaskInfoPo集合
     * @throws ServiceException
     */
	public List<MktTaskInfoPo> list(@Param("condition") Map<String,Object> param, @Param("page") IPage page) throws ServiceException;

	/**
     * 新增MktTaskInfoPo
     */
	public void insert(Operator oper,MktTaskInfoPo one) throws ServiceException;

	/**
     * 删除MktTaskInfoPo
     */
	public void delete(Operator oper,MktTaskInfoPo one) throws ServiceException;

	/**
     * 更新MktTaskInfoPo
     */
	public void update(Operator oper,MktTaskInfoPo one) throws ServiceException;

}
