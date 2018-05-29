package com.good.cus.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.good.comm.web.WebPageResult;
import com.good.comm.web.WebRequest;
import com.good.cus.bean.PubPoitMsg;
import com.good.cus.service.PubPoitMsgService;
import com.good.db.IPage;
import com.good.sys.WebUtils;

@Controller
@RequestMapping("/cus/pubmsg")
public class PubPoitMsgController {

	//private static Logger logger = LoggerFactory.getLogger(PubPoitMsgController.class);
	
	@Autowired
	private PubPoitMsgService Service;
	
    @GetMapping("/pubpoitmsg_info")
    public String toPageL() throws Exception {
        return "/pubmsg/pubpoitmsg_info";
    }
	
	@SuppressWarnings("unchecked")
	@PostMapping("/pubpoitmsg_info/pubpoitmsgInfo")
    @ResponseBody
    public WebPageResult pubpoitmsgInfo(WebRequest wr,HttpServletRequest request) throws Exception {
        // 获取排序信息
        HashMap<String, Object> condition = WebUtils.fillOrderParam(wr, null);
        // 设置查询条件
        condition.put("msgType", request.getParameter("msgType"));
        condition.put("msgTitle", request.getParameter("msgTitle"));
        // 获取翻页信息
        IPage page = WebUtils.getPageParam(wr);
        List<PubPoitMsg> lists = Service.PubPoitMsgToTable(condition, page);
        
        WebPageResult ret = new WebPageResult(lists);
        ret.setRecordsTotal(page.getTotalCount());
        ret.setRecordsFiltered(page.getTotalCount());
        return ret;
    }
}
