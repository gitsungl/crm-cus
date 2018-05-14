package com.good.cus.bean;

import java.io.Serializable;
import java.util.Date;

public class MktActInfoPo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	/**
     * 活动ID
     */
	private Integer ctId;
	/**
     * 活动名称
     */
	private String actName;
	/**
     * 活动类型
     */
	private String actType;
	/**
     * 活动状态:1-失效 9-驳回 2-生效
     */
	private String actStatus;
	/**
     * 开始日期
     */
	private Date startDate;
	/**
     * 结束日期
     */
	private Date endDate;
	/**
     * 活动规模
     */
	private String actScope;
	/**
     * 活动内容
     */
	private String actDesc;
	/**
     * 主办单位
     */
	private String hostUnit;
	/**
     * 活动联系人
     */
	private String linker;
	/**
     * 活动联系电话
     */
	private String tel;
	/**
     * 活动地点
     */
	private String addr;
	/**
     * 创建人
     */
	private String createUser;
	/**
     * 申创建时间
     */
	private Date createTime;
	/**
     * 最后修改人
     */
	private String lastUpdUser;
	/**
     * 最后修改时间
     */
	private Date lastUpdTime;
	
	public Integer getCtId() {
		return ctId;
	}
	public void setCtId(Integer ctId) {
		this.ctId = ctId;
	}
	public String getActName() {
		return actName;
	}
	public void setActName(String actName) {
		this.actName = actName;
	}
	public String getActType() {
		return actType;
	}
	public void setActType(String actType) {
		this.actType = actType;
	}
	public String getActStatus() {
		return actStatus;
	}
	public void setActStatus(String actStatus) {
		this.actStatus = actStatus;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getActScope() {
		return actScope;
	}
	public void setActScope(String actScope) {
		this.actScope = actScope;
	}
	public String getActDesc() {
		return actDesc;
	}
	public void setActDesc(String actDesc) {
		this.actDesc = actDesc;
	}
	public String getHostUnit() {
		return hostUnit;
	}
	public void setHostUnit(String hostUnit) {
		this.hostUnit = hostUnit;
	}
	public String getLinker() {
		return linker;
	}
	public void setLinker(String linker) {
		this.linker = linker;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getLastUpdUser() {
		return lastUpdUser;
	}
	public void setLastUpdUser(String lastUpdUser) {
		this.lastUpdUser = lastUpdUser;
	}
	public Date getLastUpdTime() {
		return lastUpdTime;
	}
	public void setLastUpdTime(Date lastUpdTime) {
		this.lastUpdTime = lastUpdTime;
	}
}
