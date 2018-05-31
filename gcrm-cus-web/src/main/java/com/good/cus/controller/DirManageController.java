package com.good.cus.controller;

import java.math.BigDecimal;
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
import com.good.cus.service.DirManageService;
import com.good.sys.WebUtils;
import com.good.sys.bean.LogonInfo;

@Controller
@RequestMapping("/cus/homepage")
public class DirManageController {

	 private static Logger logger = LoggerFactory.getLogger(HomePageInfoController.class);

	 @Autowired
	 private  DirManageService service;
	 
	 @RequestMapping(value = "/dirmanage_info", method = { RequestMethod.POST, RequestMethod.GET })
	 public String toPage() throws Exception {
	     return "/homepage/dirmanage_info";
	 }
	 
	 @PostMapping("/dirmanage_info/dirmanage")
	 @ResponseBody
	 public WebPageResult homepage(WebRequest wr, HttpServletRequest request) throws Exception {
		 LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
	     String staffId =  linfo.getOperator().getUserID();
	     logger.info("controller staffId: {}", staffId);
	     List<String> perfAcph = service.performance(staffId);
	     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	     List<BigDecimal> unfinished = service.unfinished(staffId);
	     List<Map<String, String>> pubDpsChg = service.pubDpsChg(staffId);
	     List<Map<String, String>> pubLoanChg = service.pubLoanChg(staffId);
	     List<List<String>> PubVifyListTab = service.PubVifyListPoForTable(staffId);
         Map<String, List<String>> perfRanking = service.perfRanking(staffId);
         List<Map<String, String>> message = service.message(staffId);
         Map<String, Object> result = new HashMap<String, Object>(7);
         result.put("perfAcph", perfAcph);
         result.put("unfinished", unfinished);
         result.put("pubDpsChg", pubDpsChg);
         result.put("pubLoanChg", pubLoanChg);
         result.put("PubVifyListTab", PubVifyListTab);
         result.put("PubVifyListTabYear", sdf.format(new Date()));
         result.put("perfRanking", perfRanking);
         result.put("message", message);
         logger.info("dirmanage controller result: {}", result);
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
