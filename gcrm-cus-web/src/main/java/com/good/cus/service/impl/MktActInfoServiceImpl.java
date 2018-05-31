package com.good.cus.service.impl;

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
import com.good.cus.bean.MktActInfoPo;
import com.good.cus.mapper.MktActInfoDao;
import com.good.cus.service.MktActInfoService;
import com.good.db.IPage;
import com.good.sys.ServiceException;
import com.good.sys.bean.Operator;
import com.good.sys.service.AuditLogService;

@Service
public class MktActInfoServiceImpl implements MktActInfoService {

	private static Logger logger = LoggerFactory.getLogger(MktActInfoServiceImpl.class);
	
	@Autowired
	private MktActInfoDao mktActInfoDao;
	
	@Autowired
    private AuditLogService logService;
	
	@Override
	public List<MktActInfoPo> list(Map<String, Object> param, IPage page) throws ServiceException {
		List<MktActInfoPo> result = mktActInfoDao.list(param, page);
		logger.info("list service result:\n{}\n", result);
		return result;
	}

	@Override
	public void insert(Operator oper, MktActInfoPo one) throws ServiceException {
		ExecuteResult result = ExecuteResult.UNKNOWN;
		try {
			one.setActStatus("1");
			one.setCreateTime(new Date());
			one.setCreateUser(oper.getUserID());
			one.setCreateOrg(oper.getOwnerUnitId());
			one.setLastUpdTime(new Date());
			one.setLastUpdUser(oper.getUserID());
			one.setLastUpdOrg(oper.getOwnerUnitId());
			mktActInfoDao.insert(one);
			result = ExecuteResult.SUCCESS;
		} finally {
			logService.addAuditLog(oper, BizType.SYS, "insertMktActInfoPo", "增加用户", "自增ID",
					FunctionType.INSERT, result);
		}

	}

	@Override
	public void delete(Operator oper , MktActInfoPo one) throws ServiceException {
		ExecuteResult result = ExecuteResult.UNKNOWN;
		try {
			mktActInfoDao.delete(one);
			result = ExecuteResult.SUCCESS;
		} finally {
			logService.addAuditLog(oper, BizType.SYS, "deleteMktActInfoPo", "增加用户", one.getActId().toString(),
					FunctionType.INSERT, result);
		}

	}

	@Override
	public void update(Operator oper, MktActInfoPo one) throws ServiceException {
		ExecuteResult result = ExecuteResult.UNKNOWN;
		try {
			one.setLastUpdTime(new Date());
			one.setLastUpdUser(oper.getUserID());
			one.setLastUpdOrg(oper.getOwnerUnitId());
			mktActInfoDao.update(one);
			result = ExecuteResult.SUCCESS;
		} finally {
			logService.addAuditLog(oper, BizType.SYS, "updateMktActInfoPo", "增加用户", one.getActId().toString(),
					FunctionType.INSERT, result);
		}
	}

}
