package com.entity;

import java.sql.Date;

public class Follow {
	private int id;
	private int u1;
	private int u2;
	private Date addTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getU1() {
		return u1;
	}
	public void setU1(int u1) {
		this.u1 = u1;
	}
	public int getU2() {
		return u2;
	}
	public void setU2(int u2) {
		this.u2 = u2;
	}
	public Date getAddTime() {
		return addTime;
	}
	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	@Override
	public String toString() {
		return "Follow [id=" + id + ", u1=" + u1 + ", u2=" + u2 + ", addTime=" + addTime + "]";
	}
	
}
