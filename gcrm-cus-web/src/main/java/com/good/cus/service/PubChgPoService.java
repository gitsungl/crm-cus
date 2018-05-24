package com.good.cus.service;

import java.util.List;

import com.good.cus.bean.PubChgPo;
import com.good.db.IPage;
import com.good.sys.ServiceException;

public interface PubChgPoService {
	
	public List<PubChgPo>  PubChgPoListForDir(String staffId, IPage page) throws ServiceException;

}
