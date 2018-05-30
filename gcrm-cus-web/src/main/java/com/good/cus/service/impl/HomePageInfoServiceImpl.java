package com.good.cus.service.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.bean.PubChgPo;
import com.good.cus.mapper.HomePageInfoDao;
import com.good.cus.service.HomePageInfoService;
import com.good.sys.ServiceException;

@Service
public class HomePageInfoServiceImpl implements HomePageInfoService {
    private static Logger logger = LoggerFactory.getLogger(HomePageInfoServiceImpl.class);

    @Autowired
    private HomePageInfoDao homePageInfoDao;

    @Override
    public List<String> performance(String staffId) throws ServiceException {
        List<String> perfAcph = new ArrayList<String>(12);
        List<MktStfPerfPo> list = homePageInfoDao.performance(staffId);
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
        logger.info("performance service result:\n{}\n", perfAcph);
        return perfAcph;
    }

    @Override
    public Map<String, List<String>> unfinished(String staffId) throws ServiceException {
        Map<String, List<String>> result = new HashMap<String, List<String>>(3);
        List<MktTaskInfoPo> list = homePageInfoDao.unfinished(staffId);
        List<String> taskName = new ArrayList<String>(10);
        List<String> perfAlready = new ArrayList<String>(10);
        List<String> perfTotal = new ArrayList<String>(10);
        if (list != null && list.size() > 0) {
            for (MktTaskInfoPo po : list) {
                taskName.add(po.getTaskName());
                perfAlready.add(po.getPerfAlready().toString());
                perfTotal.add(po.getPerfTotal().toString());
            }
        }
        result.put("taskName", taskName);
        result.put("perfAlready", perfAlready);
        result.put("perfTotal", perfTotal);
        logger.info("unfinished service result:\n{}\n", result);
        return result;
    }

    @Override
    public List<Map<String, String>> pubDpsChg(String staffId) throws ServiceException {
        List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
        List<PubChgPo> list = homePageInfoDao.pubDpsChg(staffId);
        if (list != null && list.size() > 0) {
            int value = 50;
            for (PubChgPo po : list) {
                Map<String, String> map = new HashMap<String, String>(2);
                map.put("name", po.getCustName() + ": " + po.getThanMAmt().toString());
                map.put("value", String.valueOf(value));
                value = value - 10;
                result.add(map);
            }
        }
        logger.info("pubDpsChg service result:\n{}\n", result);
        return result;
    }

    @Override
    public List<Map<String, String>> pubLoanChg(String staffId) throws ServiceException {
        List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
        List<PubChgPo> list = homePageInfoDao.pubLoanChg(staffId);
        if (list != null && list.size() > 0) {
            int value = 50;
            for (PubChgPo po : list) {
                Map<String, String> map = new HashMap<String, String>(2);
                map.put("name", po.getCustName() + ": " + po.getThanMAmt().toString());
                map.put("value", String.valueOf(value));
                value = value - 10;
                result.add(map);
            }
        }
        logger.info("pubLoanChg service result:\n{}\n", result);
        return result;
    }

    @Override
    public List<String> busiOpp(String staffId) throws ServiceException {
        List<String> result = homePageInfoDao.busiOpp(staffId);
        logger.info("busiOpp service result:\n{}\n", result);
        return result;
    }

    @Override
    public Map<String, Object> perfRanking(String staffId) throws ServiceException {
        Map<String, Object> result = new HashMap<String, Object>(3);
        List<MktStfPerfPo> list = homePageInfoDao.perfRanking(staffId);
        List<String> perfRanking = new ArrayList<String>(5);
        List<String> perfRankingName = new ArrayList<String>(5);
        int i_acph = 4;
        if (list != null && list.size() == 5 && staffId.equals(list.get(4).getStaffId())) {
            String myName = list.get(4).getStaffName();
            BigDecimal myValue = list.get(4).getPerfAcph();
            for (int i = 0; i < 4; i++) {
                if (myValue.compareTo(list.get(i).getPerfAcph()) == 1) {
                    i_acph = i;
                    break;
                }
            }
            for (int i = 0; i < i_acph; i++) {
                perfRankingName.add("no" + (i + 1) + list.get(i).getStaffName());
                perfRanking.add(list.get(i).getPerfAcph().toString());
            }
            perfRankingName.add("nom" + myName);
            perfRanking.add(myValue.toString());
            for (int i = i_acph + 1; i < 5; i++) {
                perfRankingName.add("no" + (i + 1) + list.get(i - 1).getStaffName());
                perfRanking.add(list.get(i - 1).getPerfAcph().toString());
            }
        }
        result.put("perfRankingName", perfRankingName);
        result.put("perfRanking", perfRanking);
        result.put("perfRankingMe", i_acph);
        logger.info("perfRanking service result:\n{}\n", result);
        return result;
    }

    @Override
    public List<Map<String, String>> message(String staffId) throws ServiceException {
        List<Map<String, String>> result = homePageInfoDao.message(staffId);
        logger.info("message service result:\n{}\n", result);
        return result;
    }

}
