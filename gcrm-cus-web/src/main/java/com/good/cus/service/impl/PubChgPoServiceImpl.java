package com.good.cus.service.impl;

import java.util.List;
import java.util.Map;

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

	private static Logger logger = LoggerFactory.getLogger(PubChgPoServiceImpl.class);
	
	@Autowired
	private PubChgPoDao pubChgPoDao;

	@Override
	public List<PubChgPo> PubChgPoListForDirL(String staffId, Map<String, Object> condition, IPage page)
			throws ServiceException {
		List<PubChgPo> result = pubChgPoDao.PubChgPoListForDirL(staffId,condition, page);
		logger.info("PubChgPoListForDir service result:\n{}\n", result);
		return result;
	}

	@Override
	public List<PubChgPo> PubChgPoListForDirD(String staffId, Map<String, Object> condition, IPage page)
			throws ServiceException {
		List<PubChgPo> result = pubChgPoDao.PubChgPoListForDirD(staffId,condition, page);
		logger.info("PubChgPoListForDir service result:\n{}\n", result);
		return result;
	}
	
	
}
