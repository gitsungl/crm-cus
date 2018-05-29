package com.good.cus.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.cus.bean.PubPoitMsg;
import com.good.cus.mapper.PubPoitMsgDao;
import com.good.cus.service.PubPoitMsgService;
import com.good.db.IPage;
import com.good.sys.ServiceException;

@Service
public class PubPoitMsgServiceImpl implements PubPoitMsgService {

	private static Logger logger = LoggerFactory.getLogger(CustBaseInfoServiceImpl.class);
	
	@Autowired
	private PubPoitMsgDao pubPoitMsgDao;
	
	@Override
	public List<PubPoitMsg> PubPoitMsgToTable(Map<String, Object> condition, IPage page) throws ServiceException {
		List<PubPoitMsg> result = pubPoitMsgDao.PubPoitMsgToTable(condition, page);
		logger.info("PubPoitMsgToTable service result:\n{}\n", result);
		return result;
	}

}
