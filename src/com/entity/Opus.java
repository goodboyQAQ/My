package com.entity;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Collection;

public class Opus implements Serializable{
	private int opusId;
	private String opusTitle;
	private String opusTime;
	private String opusImg;
	private String opusType;
	private String opusType2;
	private String original;
	private String tag;
	private Timestamp createTime;
	private Timestamp changeTime;
	private int collect;
	private int coin;
	private int click;
	private int userId;

	public int getOpusId() {
		return opusId;
	}

	public void setOpusId(int opusId) {
		this.opusId = opusId;
	}

	public String getOpusTitle() {
		return opusTitle;
	}

	public void setOpusTitle(String opusTitle) {
		this.opusTitle = opusTitle;
	}

	public String getOpusTime() {
		return opusTime;
	}

	public void setOpusTime(String opusTime) {
		this.opusTime = opusTime;
	}

	public String getOpusImg() {
		return opusImg;
	}

	public void setOpusImg(String opusImg) {
		this.opusImg = opusImg;
	}

	public String getOpusType() {
		return opusType;
	}

	public void setOpusType(String opusType) {
		this.opusType = opusType;
	}

	public String getOpusType2() {
		return opusType2;
	}

	public void setOpusType2(String opusType2) {
		this.opusType2 = opusType2;
	}

	public String getOriginal() {
		return original;
	}

	public void setOriginal(String original) {
		this.original = original;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Timestamp getChangeTime() {
		return changeTime;
	}

	public void setChangeTime(Timestamp changeTime) {
		this.changeTime = changeTime;
	}

	public int getCollect() {
		return collect;
	}

	public void setCollect(int collect) {
		this.collect = collect;
	}

	public int getCoin() {
		return coin;
	}

	public void setCoin(int coin) {
		this.coin = coin;
	}

	public int getClick() {
		return click;
	}

	public void setClick(int click) {
		this.click = click;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Opus [opusId=" + opusId + ", opusTitle=" + opusTitle + ", opusTime=" + opusTime + ", opusImg=" + opusImg
				+ ", createTime=" + createTime + ", userId=" + userId + "]";
	}
	
	
}
