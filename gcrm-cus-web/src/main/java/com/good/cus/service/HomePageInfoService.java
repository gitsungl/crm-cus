package com.good.cus.service;

import java.util.List;

import com.good.cus.bean.HomePagePo;
import com.good.sys.ServiceException;

public interface HomePageInfoService {

    public List<HomePagePo> list(String staffId) throws ServiceException;

}
