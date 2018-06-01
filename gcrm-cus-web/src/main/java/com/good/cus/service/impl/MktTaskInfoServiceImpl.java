package com.good.cus.service.impl;

import java.text.SimpleDateFormat;
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
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.mapper.MktTaskInfoDao;
import com.good.cus.service.MktTaskInfoService;
import com.good.db.IPage;
import com.good.sys.ServiceException;
import com.good.sys.bean.Operator;
import com.good.sys.service.AuditLogService;

@Service
public class MktTaskInfoServiceImpl implements MktTaskInfoService {

	private static Logger logger = LoggerFactory.getLogger(MktTaskInfoServiceImpl.class);
	
	@Autowired
	private MktTaskInfoDao mktTaskInfoDao;
	
	@Autowired
    private AuditLogService logService;
	
	@Override
	public List<MktTaskInfoPo> list(Map<String, Object> param, IPage page) throws ServiceException {
		List<MktTaskInfoPo> result = mktTaskInfoDao.list(param, page);
		logger.info("list service result:\n{}\n", result);
		return result;
	}

	@Override
	public void insert(Operator oper, MktTaskInfoPo one) throws ServiceException {
		ExecuteResult result = ExecuteResult.UNKNOWN;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("MMddHHmmss");
			one.setTaskId(Integer.parseInt(sdf.format(new Date())));
			one.setCreateTime(new Date());
			mktTaskInfoDao.insert(one);
			result = ExecuteResult.SUCCESS;
		} finally {
			logService.addAuditLog(oper, BizType.SYS, "insertMktTaskInfoPo", "增加营销任务", "自增ID",
					FunctionType.INSERT, result);
		}

	}

	@Override
	public void delete(Operator oper, MktTaskInfoPo one) throws ServiceException {
		ExecuteResult result = ExecuteResult.UNKNOWN;
		try {
			mktTaskInfoDao.delete(one);
			result = ExecuteResult.SUCCESS;
		} finally {
			logService.addAuditLog(oper, BizType.SYS, "deleteMktActInfoPo", "删除营销任务", one.getTaskId().toString(),
					FunctionType.INSERT, result);
		}

	}

	@Override
	public void update(Operator oper, MktTaskInfoPo one) throws ServiceException {
		ExecuteResult result = ExecuteResult.UNKNOWN;
		try {
			mktTaskInfoDao.update(one);
			result = ExecuteResult.SUCCESS;
		} finally {
			logService.addAuditLog(oper, BizType.SYS, "updateMktActInfoPo", "更新营销任务", one.getTaskId().toString(),
					FunctionType.INSERT, result);
		}

	}

}
