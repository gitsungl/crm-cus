package com.good.cus.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.MktStfPerfPo;
import com.good.cus.bean.MktTaskInfoPo;
import com.good.cus.service.BusiManageService;

@Controller
@RequestMapping("/cus")
public class BusiManageController {
    private static Logger logger = LoggerFactory.getLogger(BusiManageController.class);

    @Autowired
    private BusiManageService service;

    @RequestMapping(value = "/busi_manage", method = { RequestMethod.POST, RequestMethod.GET })
    public String toPage() throws Exception {
        return "/homepage/busi_manage";
    }

    @SuppressWarnings("null")
	@PostMapping("/busi_manage/homepage")
    @ResponseBody
    public WebPageResult homepage(WebRequest wr, HttpServletRequest request) throws Exception {
        // LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        String staffId = "201801"; // linfo.getOperator().getUserID();
        logger.info("controller staffId: {}", staffId);
        List<MktTaskInfoPo> MktTaskInfoTab = service.MktTaskInfoForTable(staffId);
        List<String> MktTaskInfoPoName = new LinkedList<String>();
        List<Integer> MktTaskInfoPoStu = new LinkedList<Integer>();
        Map<String, Object> result = new HashMap<String, Object>();
        if(MktTaskInfoTab.size()>0) {
        	 for(int i=0 ; i<MktTaskInfoTab.size();i++) {
        		 MktTaskInfoPoName.add(MktTaskInfoTab.get(i).getTaskName());
        		 MktTaskInfoPoStu.add(MktTaskInfoTab.get(i).getTaskStatusNum());
             }
        }
        result.put("MktTaskInfoPoName", MktTaskInfoPoName);
        result.put("MktTaskInfoPoStu", MktTaskInfoPoStu);
        
        //String PubVifyListTab = service.PubVifyListPoForTable(staffId);
        
        
        List<MktStfPerfPo> MktStfPerfPoTab = service.MktStfPerfPoForTable(staffId);
        StringBuffer MktStfPerfPoTabYear = new StringBuffer();
        BigDecimal[] MktStfPerfPoTabNum = new  BigDecimal[12];
        if(MktStfPerfPoTab.size()>0) {
        	MktStfPerfPoTabYear.append(MktStfPerfPoTab.get(0).getStaffName()).append("年");
        	for(int i = 0 ; i<MktStfPerfPoTab.size() ; i++) {
        		MktStfPerfPoTabNum[i] = MktStfPerfPoTab.get(i).getPerfAcph();
        	}
        }else {
        	logger.info("---------------图3：业绩比较图数据为空--------------");
        }
        result.put("MktStfPerfPoTabYear", MktStfPerfPoTabYear.toString());
        result.put("MktStfPerfPoTabNum", MktStfPerfPoTabNum);
        
        List<String> message = service.message(staffId);
        result.put("message", message);
        
        //result.put("MktStfPerfPoTab", MktStfPerfPoTab);
        logger.info("homepage controller result: {}", result);
        
        WebPageResult ret = new WebPageResult(result);
        return ret;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}