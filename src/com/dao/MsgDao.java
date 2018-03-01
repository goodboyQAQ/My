package com.dao;

import java.util.List;
import java.util.Map;

import javax.ejb.FinderException;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import com.entity.Dicuss;
import com.entity.Msg;

public interface MsgDao {
	
	public void save(Msg msg);
	public void hasRead(@Param("id")int id);
	public void del(@Param("id")int id);
	public List<Map> select(@Param("toId")int toId); 
	public Msg beforeDel(@Param("entityId")int entityId,@Param("fromId")int fromId,@Param("type")String type);
	public Msg findIdByUser(@Param("toId")int toId,@Param("fromId")int fromId,@Param("type")String type);
}
