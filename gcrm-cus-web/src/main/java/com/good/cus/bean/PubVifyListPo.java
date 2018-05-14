package com.good.cus.bean;

import java.io.Serializable;
import java.util.Date;

public class PubVifyListPo implements Serializable {

	private static final long serialVersionUID = 1L;
	/**
     * 主键
     */
	private Integer id;
	/**
     * 审核对象ID
     */
	private Integer objId;
	/**
     * 审核类型 1-商机认领 2-潜在客户 3-营销活动 4-产品入库
     */
	private String objType;
	/**
     * 申请人
     */
	private String createUser;
	/**
     * 申请时间
     */
	private Date createTime;
	/**
     * 审核状态 1-处理中 2-通过 3-驳回
     */
	private String status;
	/************/
	private String yearStr;
	
	private String dataStr;
	
	public String getYearStr() {
		return yearStr;
	}
	public void setYearStr(String yearStr) {
		this.yearStr = yearStr;
	}
	public String getDataStr() {
		return dataStr;
	}
	public void setDataStr(String dataStr) {
		this.dataStr = dataStr;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getObjId() {
		return objId;
	}
	public void setObjId(Integer objId) {
		this.objId = objId;
	}
	public String getObjType() {
		return objType;
	}
	public void setObjType(String objType) {
		this.objType = objType;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
