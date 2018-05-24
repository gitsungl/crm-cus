package com.good.cus.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.cus.bean.PubChgPo;
import com.good.cus.mapper.PubChgPoDao;
import com.good.cus.service.PubChgPoService;
import com.good.db.IPage;
import com.good.sys.ServiceException;

@Service
public class PubChgPoServiceImpl implements PubChgPoService {

	private static Logger logger = LoggerFactory.getLogger(CustBaseInfoServiceImpl.class);
	
	@Autowired
	private PubChgPoDao pubChgPoDao;

	@Override
	public List<PubChgPo> PubChgPoListForDir(String staffId, IPage page)
			throws ServiceException {
		List<PubChgPo> result = pubChgPoDao.PubChgPoListForDir(staffId, page);
		logger.info("PubChgPoListForDir service result:\n{}\n", result);
		return result;
	}
	
	
}
