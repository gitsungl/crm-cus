package com.good.cus.service;

import java.util.List;
import java.util.Map;

import com.good.cus.bean.PubPoitMsg;
import com.good.db.IPage;
import com.good.sys.ServiceException;

public interface PubPoitMsgService {
	
	public List<PubPoitMsg>  PubPoitMsgToTable(Map<String, Object> condition,IPage page) throws ServiceException;

}
