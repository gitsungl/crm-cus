package com.good.cus.service.impl;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.bean.PubChgPo;
import com.good.cus.bean.PubVifyListPo;
import com.good.cus.mapper.DirManageDao;
import com.good.cus.service.DirManageService;
import com.good.sys.ServiceException;

@Service
public class DirManageServiceImpl implements DirManageService {

	private static Logger logger = LoggerFactory.getLogger(HomePageInfoServiceImpl.class);

	@Autowired
    private DirManageDao dirManageDao;
	
	@Override
	public List<String> performance(String staffId)  throws ServiceException{
		List<String> perfAcph = new ArrayList<String>(12);
        List<MktStfPerfPo> list = dirManageDao.performance(staffId);
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
	public Map<String, List<String>> perfRanking(String staffId) throws ServiceException{
		Map<String, List<String>> result = new HashMap<String, List<String>>(3);
        List<MktStfPerfPo> list = dirManageDao.perfRanking(staffId);
        List<String> perfRanking = new ArrayList<String>(5);
        List<String> perfRankingName = new ArrayList<String>(5);
        if (list.size() == 5 && staffId.equals(list.get(4).getStaffId())) {
            String myName = list.get(4).getStaffName();
            BigDecimal myValue = list.get(4).getPerfAcph();
            int i_acph = 4;
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
        logger.info("perfRanking service result:\n{}\n", result);
        return result;
	}

	@Override
	public List<BigDecimal> unfinished(String staffId) throws ServiceException{
		List<BigDecimal> result = new ArrayList<BigDecimal>();
        List<MktTaskInfoPo> list = dirManageDao.unfinished(staffId);
        if (list != null && list.size() > 0) {
            for (MktTaskInfoPo po : list) {
            	result.add(po.getPerfTotal().setScale(0, BigDecimal.ROUND_HALF_UP));
            }
        }
        logger.info("unfinished service result:\n{}\n", result);
        return result;
	}

	@Override
	public List<Map<String, String>> pubDpsChg(String staffId) throws ServiceException{
		List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
        List<PubChgPo> list = dirManageDao.pubDpsChg(staffId);
        if (list != null && list.size() > 0) {
            for (PubChgPo po : list) {
                Map<String, String> map = new HashMap<String, String>(2);
                map.put("name", po.getCustName() + po.getThanMAmt().toString());
                map.put("value", po.getThanMAmt().toString());
                result.add(map);
            }
        }
        logger.info("pubDpsChg service result:\n{}\n", result);
        return result;
	}

	@Override
	public List<Map<String, String>> pubLoanChg(String staffId) throws ServiceException{
		List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
        List<PubChgPo> list = dirManageDao.pubLoanChg(staffId);
        if (list != null && list.size() > 0) {
            for (PubChgPo po : list) {
                Map<String, String> map = new HashMap<String, String>(2);
                map.put("name", po.getCustName() + po.getThanMAmt().toString());
                map.put("value", po.getThanMAmt().toString());
                result.add(map);
            }
        }
        logger.info("pubLoanChg service result:\n{}\n", result);
        return result;
	}

	@Override
	public List<List<String>> PubVifyListPoForTable(String createUser) throws ServiceException, ParseException{
		List<PubVifyListPo> poList = dirManageDao.PubVifyListPoForTable(createUser);
		Map<String,String[]> dataMap = new HashMap<String,String[]>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(poList.size()>0) {
			for(int i=0 ; i <poList.size() ; i++) {
				if(null!=poList.get(i)&&!"".equals(poList.get(i).getStatus())&&null!=poList.get(i).getStatus()) {
					poList.get(i).setDataStr(poList.get(i).getStatus().split(","));
					dataMap.put(sdf.format(poList.get(i).getCreateTime()), poList.get(i).getDataStr());
				}else {
					logger.info("---------------数据错误--------------");
				}
			}
		}
		return getListOfData(dataMap);
	}

	@Override
	public List<String> message(String staffId) throws ServiceException{
		 List<String> result = dirManageDao.message(staffId);
	        logger.info("message service result:\n{}\n", result);
	        return result;
	}

	/******日期遍历方法
	 * @throws ParseException ******/
	public List<List<String>> getListOfData(Map<String,String[]> dataMap) throws ParseException {
		List<List<String>> list = new LinkedList<List<String>>();
		Calendar aCalendar = Calendar.getInstance(Locale.CHINA);
		int year = aCalendar.get(Calendar.YEAR);// 年份
		int month = aCalendar.get(Calendar.MONTH) + 1;// 月份
		int day = aCalendar.getActualMaximum(Calendar.DATE);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 1; i <= day; i++) {
			String aDate = String.valueOf(year) + "-" + month + "-" + i;
			//判断该日期中存在任务状态
			List<String> slist = new ArrayList<>();
			slist.add(sdf.format(sdf.parse(aDate)));
			if(null!=dataMap.get(sdf.format(sdf.parse(aDate)))) {
				slist.add(goToList(dataMap.get(sdf.format(sdf.parse(aDate)))));
			}else {
				slist.add("");
			}
			list.add(slist);
		}
		return list;
	}

	public String goToList(String[] str){
		List<String> strList = new ArrayList<String>();
		for(int i = 0 ; i <str.length;i++) {
			if(null!=str[i]&&!"".equals(str[i])) {
				if("1".equals(str[i])) {
					strList.add("0");
				}else {
					strList.add("1");
				}
			}
		}
		StringBuilder result=new StringBuilder();
	    boolean flag=false;
	    for (String string : strList) {
	        if (flag) {
	            result.append("|"); // 分隔符
	        }else {
	            flag=true;
	        }
	        result.append(string);
	    }
		return result.toString();
	}
	
}
