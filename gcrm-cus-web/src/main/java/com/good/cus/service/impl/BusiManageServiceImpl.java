package com.good.cus.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

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

	@SuppressWarnings("null")
	@Override
	public List<String[]> PubVifyListPoForTable(String createUser) throws ServiceException {
		List<PubVifyListPo> poList = busiManageDao.PubVifyListPoForTable(createUser);
		List<String[]> StrList = new LinkedList<String[]>();
		//Map<String,String> dataMap = new HashMap<>();
		if(poList.size()>0) {
			for(int i=0 ; i <poList.size() ; i++) {
				dataList(poList.get(i),null);
			}
		}
		return StrList;
	}

	@Override
	public List<MktStfPerfPo> MktStfPerfPoForTable(String staffId) throws ServiceException {
		List<MktStfPerfPo> poList = busiManageDao.MktStfPerfPoForTable(staffId);
		return poList;
	}
	
    @Override
    public List<String> message(String staffId) throws ServiceException {
        List<String> result = busiManageDao.message(staffId);
        logger.info("message service result:\n{}\n", result);
        return result;
    }
	
	/******日期遍历方法******/
	@SuppressWarnings("null")
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
	}
/*	*//******将日期相等的值设置进入*****//*
	
	@SuppressWarnings("null")
	public String[] addDate(String str,String status) {
		String  dstr[] = null;
		dstr[0] = str;
		dstr[1] = status;
		return dstr;
	}*/

}
