package com.ebbbs.entity;

import java.util.Date;

/**
 * 游戏登陆公告实体
 * 
 * @author xl.chen
 * @date 2018年6月8日下午3:30:08
 */
public class LoginBulletin {
	
	private long id;
	private String type;
	private String content;
	private String effectiveTime;
	private String largeArea;
	private String areaService;
	private String channel;
	private String creator;
	private Date gmtCreate;
	private String updater;
	private Date gmtModified;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEffectiveTime() {
		return effectiveTime;
	}
	public void setEffectiveTime(String effectiveTime) {
		this.effectiveTime = effectiveTime;
	}
	public String getLargeArea() {
		return largeArea;
	}
	public void setLargeArea(String largeArea) {
		this.largeArea = largeArea;
	}
	public String getAreaService() {
		return areaService;
	}
	public void setAreaService(String areaService) {
		this.areaService = areaService;
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public Date getGmtCreate() {
		return gmtCreate;
	}
	public void setGmtCreate(Date gmtCreate) {
		this.gmtCreate = gmtCreate;
	}
	public String getUpdater() {
		return updater;
	}
	public void setUpdater(String updater) {
		this.updater = updater;
	}
	public Date getGmtModified() {
		return gmtModified;
	}
	public void setGmtModified(Date gmtModified) {
		this.gmtModified = gmtModified;
	}

}
