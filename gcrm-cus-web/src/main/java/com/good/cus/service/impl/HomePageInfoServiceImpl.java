package com.good.cus.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.pubChgPo;
import com.good.cus.mapper.HomePageInfoDao;
import com.good.cus.service.HomePageInfoService;
import com.good.sys.ServiceException;

@Service
public class HomePageInfoServiceImpl implements HomePageInfoService {
    private static Logger logger = LoggerFactory.getLogger(ProductInfoServiceImpl.class);

    @Autowired
    private HomePageInfoDao homePageInfoDao;

    @Override
    public List<String> performance(String staffId) throws ServiceException {
        List<MktStfPerfPo> list = homePageInfoDao.performance(staffId);
        List<String> perfAcph = new ArrayList<String>(12);
        boolean monthFlag = false;
        for (int i = 0; i < 12; i++) {
            if (list != null && list.size() > 0) {
                monthFlag = false;
                for (MktStfPerfPo po : list) {
                    if (!monthFlag && po.getId() == i + 1) {
                        monthFlag = true;
                        break;
                    }
                }
                if (monthFlag) {
                    for (MktStfPerfPo po : list) {
                        if (po.getId() == i + 1) {
                            perfAcph.add(po.getPerfAcph().toString());
                            break;
                        }
                    }
                    
                } else {
                    perfAcph.add("0");
                }
            } else {
                perfAcph.add("0");
            }
        }
        logger.info("performance service result: {}", perfAcph);
        return perfAcph;
    }

    @Override
    public List<String> unfinished(String staffId) throws ServiceException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Map<String, String>> pubDpsChg(String staffId) throws ServiceException {
        List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
        List<pubChgPo> list = homePageInfoDao.pubDpsChg(staffId);
        if (list != null && list.size() > 0) {
            for (pubChgPo po : list) {
                Map<String, String> map = new HashMap<String, String>(2);
                map.put("name", po.getCustNo());
                map.put("value", po.getThanMAmt().toString());
                result.add(map);
            }
        }
        logger.info("pubDpsChg service result: {}", result);
        return result;
    }

    @Override
    public List<Map<String, String>> pubLoanChg(String staffId) throws ServiceException {
        List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
        List<pubChgPo> list = homePageInfoDao.pubLoanChg(staffId);
        if (list != null && list.size() > 0) {
            for (pubChgPo po : list) {
                Map<String, String> map = new HashMap<String, String>(2);
                map.put("name", po.getCustNo());
                map.put("value", po.getThanMAmt().toString());
                result.add(map);
            }
        }
        logger.info("pubLoanChg service result: {}", result);
        return result;
    }

    @Override
    public List<String> busiOpp(String staffId) throws ServiceException {
        List<String> result = homePageInfoDao.busiOpp(staffId);
        logger.info("busiOpp service result: {}", result);
        return result;
    }

    @Override
    public List<String> PerfRanking(String staffId) throws ServiceException {
        // TODO Auto-generated method stub
        return null;
    }

}
