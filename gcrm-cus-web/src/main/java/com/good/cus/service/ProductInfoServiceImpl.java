package com.good.cus.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.comm.enu.BizType;
import com.good.comm.enu.ExecuteResult;
import com.good.comm.enu.FunctionType;
import com.good.db.IPage;
import com.good.sys.ServiceException;
import com.good.sys.bean.Operator;
import com.good.sys.service.AuditLogService;
import com.good.cus.bean.ProductInfoPo;
import com.good.cus.mapper.ProductInfoDao;

/**
 * 产品信息表业务操作
 */
@Service
public class ProductInfoServiceImpl implements ProductInfoService {

    private static Logger logger = LoggerFactory.getLogger(ProductInfoServiceImpl.class);

    @Autowired
    private AuditLogService logService;

    @Autowired
    private ProductInfoDao product_infoDao;
 

    public List<ProductInfoPo> list(Operator oper, Map condition, IPage page) throws ServiceException {
        return product_infoDao.list(condition, page);
    }

    public void add(Operator oper, ProductInfoPo one) throws ServiceException {
        ExecuteResult result = ExecuteResult.UNKNOWN;
        try {
            //one.setCrtTime(new Date());
            //one.setUpdTime(one.getCrtTime());
            //one.setUpdUser(oper.getUserID());
            //one.setCrtUser(oper.getUserID());
            product_infoDao.insert(one);
            result = ExecuteResult.SUCCESS;
        } finally {
            logService.addAuditLog(oper, BizType.SYS, "addproduct_info", "新增产品信息表", one.toString(), FunctionType.INSERT, result);
        }
    }

    public void delete(Operator oper, ProductInfoPo one) throws ServiceException {
        ExecuteResult result = ExecuteResult.UNKNOWN;
        try {
            product_infoDao.delete(one);
            result = ExecuteResult.SUCCESS;
        } finally {
            logService.addAuditLog(oper, BizType.SYS, "deleteproduct_info", "删除产品信息表", one.toString(), FunctionType.DELETE, result);
        }
    }

    public void update(Operator oper, ProductInfoPo one) throws ServiceException {
        ExecuteResult result = ExecuteResult.UNKNOWN;
        try {
            //one.setUpdUser(oper.getUserID());
            //one.setUpdTime(new Date());
            product_infoDao.update(one);
            result = ExecuteResult.SUCCESS;
        } finally {
            logService.addAuditLog(oper, BizType.SYS, "updateproduct_info", "更新产品信息表", one.toString(), FunctionType.UPDATE, result);
        }
    }

}
