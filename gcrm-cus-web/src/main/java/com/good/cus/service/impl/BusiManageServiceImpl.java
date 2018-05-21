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
import com.good.cus.bean.PubVifyListPo;
import com.good.cus.mapper.BusiManageDao;
import com.good.cus.service.BusiManageService;
import com.good.sys.ServiceException;

@Service
public class BusiManageServiceImpl implements BusiManageService {

	private static Logger logger = LoggerFactory.getLogger(BusiManageServiceImpl.class);
	
	@Autowired
    private BusiManageDao busiManageDao;
	
	@Override
	public List<MktTaskInfoPo> MktTaskInfoForTable(String staffId) throws ServiceException {
		List<MktTaskInfoPo> poList = busiManageDao.MktTaskInfoForTable(staffId);
		if(poList.size()>0) {
			for(int i = 0 ;i<poList.size();i++) {
				switch (poList.get(i).getTaskStatus()) {
				case "1":
					poList.get(i).setTaskStatusNum(40);
					break;
				case "2":
					poList.get(i).setTaskStatusNum(60);
					break;
				case "3":
					poList.get(i).setTaskStatusNum(80);
					break;
				case "4":
					poList.get(i).setTaskStatusNum(100);
					break;
				default:
					logger.info("---------------数据错误--------------");
					break;
				}
			}
		}else {
			logger.info("---------------图1：营销进度图数据为空--------------");
		}
		return poList;
	}

	@Override
	public List<List<String>> PubVifyListPoForTable(String createUser) throws ServiceException, ParseException {
		List<PubVifyListPo> poList = busiManageDao.PubVifyListPoForTable(createUser);
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
	public List<MktStfPerfPo> MktStfPerfPoForTable(String staffId) throws ServiceException {
		List<MktStfPerfPo> poList = busiManageDao.MktStfPerfPoForTable(staffId);
		if(poList.size()>0) {
			for(int i = 0 ; i < poList.size();i++) {
				List<BigDecimal> list = new LinkedList<>();
				String[] s =poList.get(i).getPerfAcphStr().split(",");
				for(int k = 0;k<s.length;k++) {
					list.add(new BigDecimal(s[k]));
				}
				poList.get(i).setPerfAcphList(list);
			}
		}
		return poList;
	}
	
    @Override
    public List<Map<String, String>> message(String staffId) throws ServiceException {
    	 List<Map<String, String>> result = busiManageDao.message(staffId);
        logger.info("message service result:\n{}\n", result);
        return result;
    }
	
	/******日期遍历方法******/
/*	@SuppressWarnings("null")
	public List<List<String>> dataList(PubVifyListPo po,Integer year) {
		List<String[]> dataList = new LinkedList<>();
		Calendar start = Calendar.getInstance();
		start.set(year, 1, 1);
		Long startTIme = start.getTimeInMillis();

		Calendar end = Calendar.getInstance();
		end.set(year + 1, 1, 1);
		Long endTime = end.getTimeInMillis();

		Long oneDay = 1000 * 60 * 60 * 24l;

		Long time = startTIme;
		while (time <= endTime) {
			Date d = new Date(time);
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String  dstr[] = null;
			if(po.getCreateTime().toString().equals(df.format(d).toString())) {
				dstr[0] = df.format(d);
				dstr[1] = po.getStatus();
			}else {
				dstr[0] = df.format(d);
				dstr[1] = "";
			}
			dataList.add(dstr);
			time += oneDay;
		}
		
		return null;
	}*/
	
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
