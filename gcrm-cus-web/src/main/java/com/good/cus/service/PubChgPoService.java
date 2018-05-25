package com.good.cus.service;

import java.util.List;
import java.util.Map;

import com.good.cus.bean.PubChgPo;
import com.good.db.IPage;
import com.good.sys.ServiceException;

public interface PubChgPoService {
	
	public List<PubChgPo>  PubChgPoListForDirL(String staffId, Map<String, Object> condition,IPage page) throws ServiceException;

	public List<PubChgPo>  PubChgPoListForDirD(String staffId, Map<String, Object> condition,IPage page) throws ServiceException;

}
