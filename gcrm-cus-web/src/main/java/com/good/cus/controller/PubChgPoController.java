package com.good.cus.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.PubChgPo;
import com.good.cus.service.PubChgPoService;
import com.good.db.IPage;
import com.good.sys.WebUtils;
import com.good.sys.bean.LogonInfo;

@Controller
@RequestMapping("/cus")
public class PubChgPoController {

	private static Logger logger = LoggerFactory.getLogger(PubChgPoController.class);
	
	@Autowired
	private PubChgPoService Service;
	
    @GetMapping("/pubchg_l_info")
    public ModelAndView toPageL(HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView();
    	LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        String staffId = linfo.getOperator().getUserID();
        mv.setViewName("/pubchg/pubchg_l_info");
        mv.addObject("loginUserId", staffId);
        return mv;
    }
    
    @GetMapping("/pubchg_d_info")
    public ModelAndView toPageD(HttpServletRequest request) throws Exception {
    	ModelAndView mv = new ModelAndView();
    	LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
        String staffId = linfo.getOperator().getUserID();
        mv.setViewName("/pubchg/pubchg_d_info");
        mv.addObject("loginUserId", staffId);
        return mv;
    }
	
	@SuppressWarnings("unchecked")
	@PostMapping("/pubchg_info/listPubChgInfoL")
    @ResponseBody
    public WebPageResult listPubChgInfoL(WebRequest wr,String staffId, HttpServletRequest request) throws Exception {
        logger.info("controller staffId: {}", staffId);
        // 获取排序信息
        HashMap<String, Object> condition = WebUtils.fillOrderParam(wr, null);
        // 设置查询条件
        condition.put("custNo", request.getParameter("custNo"));
        condition.put("custName", request.getParameter("custName"));
        // 获取翻页信息
        IPage page = WebUtils.getPageParam(wr);
        List<PubChgPo> lists = Service.PubChgPoListForDirL(staffId,condition, page);
        WebPageResult ret = new WebPageResult(lists);
        ret.setRecordsTotal(page.getTotalCount());
        ret.setRecordsFiltered(page.getTotalCount());
        return ret;
    }
	
	@SuppressWarnings("unchecked")
	@PostMapping("/pubchg_info/listPubChgInfoD")
    @ResponseBody
    public WebPageResult listPubChgInfoD(WebRequest wr,String staffId, HttpServletRequest request) throws Exception {
        logger.info("controller staffId: {}", staffId);
        // 获取排序信息
        HashMap<String, Object> condition = WebUtils.fillOrderParam(wr, null);
        // 设置查询条件
        condition.put("custNo", request.getParameter("custNo"));
        condition.put("custName", request.getParameter("custName"));
        // 获取翻页信息
        IPage page = WebUtils.getPageParam(wr);
        List<PubChgPo> lists = Service.PubChgPoListForDirD(staffId,condition, page);
        WebPageResult ret = new WebPageResult(lists);
        ret.setRecordsTotal(page.getTotalCount());
        ret.setRecordsFiltered(page.getTotalCount());
        return ret;
    }
}
