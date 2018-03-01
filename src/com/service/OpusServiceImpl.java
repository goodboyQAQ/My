package com.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.OpusDao;
import com.entity.Opus;
import com.entity.Result;

@Service
public class OpusServiceImpl implements OpusService{
	
	@Resource
	private OpusDao opusDao;
	
	
	public Result addOpus() {
		Opus opus=new Opus();
		opus.setOpusTitle("sss");
		opus.setOpusImg("sss");
		opus.setOpusTime("11111");
		opus.setUserId(144);
		opusDao.save(opus);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("����opus�ɹ�");
		result.setData(opus);
		return result;
	}
	
	public Result findOpus(String opusType){
		List<Map> list=opusDao.select(opusType); 
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("�ɹ�");
		result.setData(list);		
		return result;				
	}
	public Result findNewOpus(String opusType){
		List<Map> list=opusDao.selectNew(opusType); 
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("�ɹ�");
		result.setData(list);		
		return result;				
	}

	
	public Result findOpusTop(String opusType,String time,String original) {
		List<Map> list=opusDao.selectTop(opusType,time,original); 
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("�ɹ�");
		result.setData(list);		
		return result;
	}
	
	public Result findOpusCount(String opusType,long time){
		int num=opusDao.selectCount(opusType,time);
		Result result=new Result();
		result.setMsg("��ѯ�¶�̬�����ɹ�");
		result.setStatus(0);
		result.setData(num);
		return result;
	}

	public Result findOpusById(int opusId) {
		Opus opus=opusDao.selectById(opusId);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("��ѯ�ɹ�");
		result.setData(opus);
		return result;
	}

	public Result findOpusByUser(int userId) {
		List<Map> list=opusDao.selectByUser(userId);
		Result result=new Result();
		result.setData(list);
		result.setMsg("�����û���Ʒ�ɹ�");
		result.setStatus(0);
		return result;
	}

	
}
