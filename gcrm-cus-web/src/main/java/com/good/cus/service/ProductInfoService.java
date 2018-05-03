package com.good.cus.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.good.db.IPage;
import com.good.sys.ServiceException;
import com.good.sys.bean.Operator;
import com.good.cus.bean.ProductInfoPo;


/**
 * 产品信息表业务操作接口
 */
public interface ProductInfoService {

    public List<ProductInfoPo> list(Operator oper, Map condition, IPage page) throws ServiceException; 
    
    public void add(Operator oper, ProductInfoPo one) throws ServiceException;

    public void delete(Operator oper, ProductInfoPo one) throws ServiceException ;

    public void update(Operator oper, ProductInfoPo one) throws ServiceException ;

}
