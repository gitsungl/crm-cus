package com.good.cus.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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
import com.good.cus.service.PresidentService;


@Controller
@RequestMapping("/cus")
public class presidentController {
    private static Logger logger = LoggerFactory.getLogger(HomePageInfoController.class);

    @Autowired
    private PresidentService service;
    
	@RequestMapping(value="/president",method={RequestMethod.POST,RequestMethod.GET})
	public String toPage(){
		return "/homepage/president";
	}
	
	
    @PostMapping("/president/homepage")
    @ResponseBody
    public WebPageResult homepage(WebRequest wr, HttpServletRequest request) throws Exception {
        // LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        String staffId = "admin"; // linfo.getOperator().getUserID();
        logger.info("controller staffId: {}", staffId);
        Map<String,List<String>> map = service.performance(staffId);
        Map<String, List<String>> unfinished = service.unfinished(staffId);
        List<Map<String, String>> pubDpsChg = service.pubDpsChg(staffId);
        List<Map<String, String>> pubLoanChg = service.pubLoanChg(staffId);
        Map<String, List<String>> perfRanking = service.perfRanking(staffId);
        List<String> message = service.message(staffId);
        Map<String,Object> termRadar = service.termRadar();

        Map<String, Object> result = new HashMap<String, Object>();
        result.put("perfAcph", map);
        result.put("unfinished", unfinished);
        result.put("pubDpsChg", pubDpsChg);
        result.put("pubLoanChg", pubLoanChg);
        result.put("perfRanking", perfRanking);
        result.put("message", message);
        result.put("termRadar", termRadar);
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
