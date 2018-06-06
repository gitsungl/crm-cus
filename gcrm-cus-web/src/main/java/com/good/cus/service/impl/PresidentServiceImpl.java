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
import com.good.cus.bean.TermRadarPo;
import com.good.cus.mapper.HomePageInfoDao;
import com.good.cus.mapper.PresidentDao;
import com.good.cus.service.PresidentService;
import com.good.sys.ServiceException;

@Service
public class PresidentServiceImpl implements PresidentService {

	 private static Logger logger = LoggerFactory.getLogger(HomePageInfoServiceImpl.class);

	    @Autowired
	    private PresidentDao presidentDao;

	    @Override
	    public Map<String,List<String>> performance(String staffId) throws ServiceException {
	    	HashMap<String,List<String>> map = new HashMap<String,List<String>>(3);
	        List<String> perfAcph = new ArrayList<String>(12);
	        List<String> perfAcphOne = new ArrayList<String>(12);
	        List<String> perfAcphTwo = new ArrayList<String>(12);
	        List<MktStfPerfPo> list = presidentDao.performance(staffId);
	        List<MktStfPerfPo> listOne = presidentDao.performanceOne(staffId);
	        List<MktStfPerfPo> listTwo = presidentDao.performanceTwo(staffId);
	        boolean monthFlag = false;
	        for (int i = 0; i < 12; i++) {
	        	//今年的趋势数据
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
	                
	                map.put("perfAcph", perfAcph);  
	            } else {
	                perfAcph.add("0");
	            }
	            
	            
	            //去年的趋势数据
	            if (listOne != null && listOne.size() > 0) {
	                monthFlag = false;
	                for (MktStfPerfPo po : listOne) {
	                    if (!monthFlag && po.getId() == i + 1) {
	                        monthFlag = true;
	                        break;
	                    }
	                }
	                if (monthFlag) {
	                    for (MktStfPerfPo po : listOne) {
	                        if (po.getId() == i + 1) {
	                            perfAcphOne.add(po.getPerfAcphOne().toString());
	                            break;
	                        }
	                    }

	                } else {
	                	perfAcphOne.add("0");
	                }
	                
	                map.put("perfAcphOne", perfAcphOne);
	            } else {
	            	perfAcphOne.add("0");
	            }
	            
	            //前年的趋势数据
	            if (listTwo != null && listTwo.size() > 0) {
	                monthFlag = false;
	                for (MktStfPerfPo po : listTwo) {
	                    if (!monthFlag && po.getId() == i + 1) {
	                        monthFlag = true;
	                        break;
	                    }
	                }
	                if (monthFlag) {
	                    for (MktStfPerfPo po : listTwo) {
	                        if (po.getId() == i + 1) {
	                            perfAcphTwo.add(po.getPerfAcphTwo().toString());
	                            break;
	                        }
	                    }

	                } else {
	                	perfAcphTwo.add("0");
	                }
	                
	                map.put("perfAcphTwo", perfAcphTwo);
	            } else {
	            	perfAcphTwo.add("0");
	            }
	        }
	        logger.info("performance service result:\n{}\n,\n{}\n,\n{}\n", perfAcph,perfAcphOne,perfAcphTwo);
	        return map;
	    }

	    @Override
	    public Map<String, List<String>> unfinished(String staffId) throws ServiceException {
	        Map<String, List<String>> result = new HashMap<String, List<String>>(3);
	        List<MktTaskInfoPo> list = presidentDao.unfinished(staffId);
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
	        List<PubChgPo> list = presidentDao.pubDpsChg(staffId);
	        if (list != null && list.size() > 0) {
	            for (PubChgPo po : list) {
	                Map<String, String> map = new HashMap<String, String>(2);
	                map.put("name", po.getStaffName());
	                map.put("value", po.getThanMAmt().toString());
	                result.add(map);
	            }
	        }
	        logger.info("pubDpsChg service result:\n{}\n", result);
	        return result;
	    }

	    @Override
	    public List<Map<String, String>> pubLoanChg(String staffId) throws ServiceException {
	        List<Map<String, String>> result = new ArrayList<Map<String, String>>(5);
	        List<PubChgPo> list = presidentDao.pubLoanChg(staffId);
	        if (list != null && list.size() > 0) {
	            for (PubChgPo po : list) {
	                Map<String, String> map = new HashMap<String, String>(2);
	                map.put("name", po.getStaffName());
	                map.put("value", po.getThanMAmt().toString());
	                result.add(map);
	            }
	        }
	        logger.info("pubLoanChg service result:\n{}\n", result);
	        return result;
	    }


	    @Override
	    public Map<String, List<String>> perfRanking(String staffId) throws ServiceException {
	        Map<String, List<String>> result = new HashMap<String, List<String>>(3);
	        List<MktStfPerfPo> list = presidentDao.perfRanking(staffId);
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
	    public List<String> message(String staffId) throws ServiceException {
	        List<String> result = presidentDao.message(staffId);
	        logger.info("message service result:\n{}\n", result);
	        return result;
	    }

		@Override
		public Map<String,Object> termRadar() {
			// TODO Auto-generated method stub
			HashMap<String,Object> map = new HashMap<String,Object>();
			ArrayList<TermRadarPo> termRadars = new ArrayList<TermRadarPo>();
			List<String> orgs = presidentDao.termRadarOrgCode();
			System.out.println(orgs.toString());
			 if (orgs != null && orgs.size() > 0) {
		            for (String str : orgs) {
		            	TermRadarPo radarPo = new TermRadarPo();
		            	radarPo.setName(str);
		            	List<String> riskNums = presidentDao.termRadarNum(str);
		            	radarPo.setValue(riskNums);
		            	termRadars.add(radarPo);
		            }
		        }
			 map.put("orgs", orgs);
			 map.put("termRadars", termRadars);
			return map;
		}

	}
