package com.good.cus.bean;

import java.io.Serializable;
import java.util.Date;

public class PubPoitMsgPo implements Serializable {

	private static final long serialVersionUID = 1L;
	/**
     * 主键
     */
	private Integer id;
	/**
     * 公告类型：1-站内公告 2-外部通知
     */
	private String msgType;
	/**
     * 公告内容
     */
	private String msgContent;
	/**
     * 公告内容
     */
	private String status;
	/**
     * 创建人
     */
	private String createUser;
	/**
     * 创建时间
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
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMsgType() {
		return msgType;
	}
	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}
	public String getMsgContent() {
		return msgContent;
	}
	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
