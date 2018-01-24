package com.entity;

import java.util.Date;

public class Dicuss {
	private int id;
	private int userId;
	private String nickName;
	private String userImg;
	private int opusId;
	private Date sendTime;
	//0评论   1评论下的回复   2@回复
	private String sendType;
	private int sendFloor;
	private String msg;
	private Integer toUser;
	private String toNickName;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public int getOpusId() {
		return opusId;
	}
	public void setOpusId(int opusId) {
		this.opusId = opusId;
	}
	public Date getSendTime() {
		return sendTime;
	}
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	public String getSendType() {
		return sendType;
	}
	public void setSendType(String sendType) {
		this.sendType = sendType;
	}
	public int getSendFloor() {
		return sendFloor;
	}
	public void setSendFloor(int sendFloor) {
		this.sendFloor = sendFloor;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Integer getToUser() {
		return toUser;
	}
	public void setToUser(Integer toUser) {
		this.toUser = toUser;
	}
	public String getToNickName() {
		return toNickName;
	}
	public void setToNickName(String toNickName) {
		this.toNickName = toNickName;
	}
	@Override
	public String toString() {
		return "Dicuss [id=" + id + ", userId=" + userId + ", nickName=" + nickName + ", userImg=" + userImg
				+ ", opusId=" + opusId + ", sendTime=" + sendTime + ", sendType=" + sendType + ", sendFloor="
				+ sendFloor + ", msg=" + msg + ", toUser=" + toUser + ", toNickName=" + toNickName + "]";
	}
	
	
}
