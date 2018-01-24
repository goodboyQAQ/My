package com.entity;

import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable{
	private int userId;
	private String userName;
	private String nickName;
	private String sex;
	private Date birth;
	private String userImg;
	private String email;
	private String tel;
	private String password;
	private Date createTime;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", nickName=" + nickName + ", sex=" + sex
				+ ", birth=" + birth + ", userImg=" + userImg + ", email=" + email + ", tel=" + tel + ", createTime="
				+ createTime + "]";
	}
	
	
}
