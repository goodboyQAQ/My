package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Dicuss;

public interface DicussDao {
	
	public void save(Dicuss dicuss);
	public int findCount(@Param("opusId")int opusId,@Param("sendType")String sendType,@Param("sendFloor")String sendFloor);
	public List<Map> updicuss0(@Param("opusId")int opusId,@Param("n")int n);
	public List<Map> maxdicuss0(@Param("opusId")int opusId,@Param("n")int n);
	public List<Map> downreply(@Param("opusId")int opusId,@Param("sendFloor")int sendFloor,@Param("n")int n);
	public Integer floor(@Param("opusId")Integer opusId);
}
