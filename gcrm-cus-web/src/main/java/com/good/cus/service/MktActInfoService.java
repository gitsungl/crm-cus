package com.good.cus.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.good.cus.bean.MktActInfoPo;
import com.good.db.IPage;
import com.good.sys.ServiceException;
import com.good.sys.bean.Operator;

public interface MktActInfoService {

	public List<MktActInfoPo> list(@Param("condition") Map<String,Object> param, @Param("page") IPage page) throws ServiceException;

    public void insert(Operator oper,MktActInfoPo one) throws ServiceException;

    public void delete(Operator oper,MktActInfoPo one) throws ServiceException;

    public void update(Operator oper,MktActInfoPo one) throws ServiceException;
    
}
