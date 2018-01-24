package com.service;

import com.entity.Result;

public interface OpusService {
	public Result addOpus();
	public Result findOpus(String opusType);
	public Result findNewOpus(String opusType);
	public Result findOpusTop(String opusType,String time,String original);
	public Result findOpusCount(String opusType,long time);
	public Result findOpusById(int opusId);
	public Result findOpusByUser(int userId);
}
