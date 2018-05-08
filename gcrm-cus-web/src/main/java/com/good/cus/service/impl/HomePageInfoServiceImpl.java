package com.good.cus.service.impl;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.cus.bean.HomePagePo;
import com.good.cus.mapper.HomePageInfoDao;
import com.good.cus.service.HomePageInfoService;
import com.good.sys.ServiceException;

@Service
public class HomePageInfoServiceImpl implements HomePageInfoService {
    private static Logger logger = LoggerFactory.getLogger(ProductInfoServiceImpl.class);

    @Autowired
    private HomePageInfoDao homePageInfoDao;

    @Override
    public List<HomePagePo> list(String staffId) throws ServiceException {
        return homePageInfoDao.countMonthByStaffId(staffId);
    }

}
