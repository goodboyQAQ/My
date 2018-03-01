package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Opus;

public interface OpusDao {
	public void save(Opus opus);
	public List<Map> select(String opusType);
	public List<Map> selectNew(String opusType);
	public List<Map> selectTop(@Param("opusType")String opusType,@Param("n")String time,@Param("original")String original);
	public int selectCount(@Param("opusType")String opusType,@Param("time")long time);
	public Opus selectById(int id);
	public List<Map> selectByUser(int useId);
}
