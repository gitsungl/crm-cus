package com.good.cus.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.MktActInfoPo;
import com.good.cus.service.MktActInfoService;
import com.good.db.IPage;
import com.good.sys.MsgConstants;
import com.good.sys.WebUtils;
import com.good.sys.bean.LogonInfo;

@Controller
@RequestMapping("/cus/mktact")
public class MktActInfoController {

	private static Logger logger = LoggerFactory.getLogger(MktActInfoController.class);
	
	@Autowired
	private MktActInfoService service;
	
	@RequestMapping(value = "/view", method = { RequestMethod.POST, RequestMethod.GET })
	public String toPage() throws Exception {
		return "/mktact/mktact_info";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/mktactinfo/list", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public WebPageResult list(WebRequest wr, HttpServletRequest request) throws Exception {

		// 获取排序信息
		HashMap<String,Object> condition = WebUtils.fillOrderParam(wr, null);
		
		// 设置查询条件
		WebUtils.convertParam(condition, request);
		condition.put("actName", request.getParameter("actName"));
		// 获取翻页信息
		IPage page = WebUtils.getPageParam(wr);
		LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
		String staffId = linfo.getOperator().getUserID();
		condition.put("staffId", staffId);
		logger.info("controller staffId: {}", staffId);
		List<MktActInfoPo> rows = service.list(condition, page);
		WebPageResult ret = new WebPageResult(rows);
		ret.setRecordsTotal(page.getTotalCount());
		ret.setRecordsFiltered(page.getTotalCount());
		return ret;
	}
	
	@RequestMapping(value = "/mktactinfo/add", method = { RequestMethod.POST })
    @ResponseBody
    public WebPageResult add(MktActInfoPo one, HttpServletRequest request) throws Exception {
        WebPageResult ret = new WebPageResult();
        try {
            LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
            service.insert(linfo.getOperator(), one);
        } catch (Exception e) {
            logger.error(MsgConstants.E0000, e);
            ret.setRetcode(MsgConstants.E0000);
            ret.setMsg(e.getMessage());
        }
        return ret;
    }
	
	@RequestMapping(value = "/mktactinfo/update", method = { RequestMethod.POST })
    @ResponseBody
    public WebPageResult update(MktActInfoPo one, HttpServletRequest request) throws Exception {
        WebPageResult ret = new WebPageResult();
        try {
            LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
            one.setLastUpdUser(linfo.getOperator().getUserID());
            service.update(linfo.getOperator(), one);
        } catch (Exception e) {
            logger.error(MsgConstants.E0000, e);
            ret.setRetcode(MsgConstants.E0000);
            ret.setMsg(e.getMessage());
        }
        return ret;
    }
	
	@RequestMapping(value = "/mktactinfo/delete", method = { RequestMethod.POST })
    @ResponseBody 
    public WebPageResult delete(@RequestBody MktActInfoPo [] list, HttpServletRequest request) throws Exception {
        WebPageResult ret = new WebPageResult();
        try {
            LogonInfo linfo = (LogonInfo) WebUtils.getLogInfo(request);
            for (MktActInfoPo one : list) {
                service.delete(linfo.getOperator(), one);
            }
            ret.setMsg("成功删除" + list.length + " 条记录!");
        } catch (Exception e) {
            logger.error(MsgConstants.E0000, e);
            ret.setRetcode(MsgConstants.E0000);
            ret.setMsg(e.getMessage());
        }
        return ret;
    }
}
