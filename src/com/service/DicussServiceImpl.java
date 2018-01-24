package com.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.DicussDao;
import com.entity.Dicuss;
import com.entity.Result;

@Service
public class DicussServiceImpl implements DicussService{
	
	@Resource
	private DicussDao dicussDao;
	
	public Result addDicuss(int userId,String nickName,String userImg,int opusId,String sendType,int sendFloor,String msg,Integer toUser,String toNickName){
		Dicuss dicuss=new Dicuss();
		dicuss.setUserId(userId);
		dicuss.setNickName(nickName);
		dicuss.setUserImg(userImg);
		dicuss.setOpusId(opusId);
		dicuss.setSendType(sendType);
		dicuss.setSendFloor(sendFloor);
		dicuss.setMsg(msg);
		dicuss.setToUser(toUser);
		dicuss.setToNickName(toNickName);
		dicuss.toString();
		dicussDao.save(dicuss);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("�������۳ɹ�");
		result.setData(dicuss);
		return result;
	}
	
	
	public Result findCount(int opusId,String sendType,String sendFloor) {
		int count=dicussDao.findCount(opusId,sendType,sendFloor);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("�ɹ���ѯ����");
		result.setData(count);
		return result;
	}
	
	public Result updicuss0(int opusId,int n){
		List<Map> list=dicussDao.updicuss0(opusId, n);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("��ѯ���۳ɹ�");
		result.setData(list);
		return result;
	}


	public Result maxdicuss0(int opusId, int n) {
		List<Map> list=dicussDao.maxdicuss0(opusId, n);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("��ѯ���۳ɹ�");
		result.setData(list);
		return result;
	}


	public Result downreply(int opusId,int sendFloor,int n) {
		List<Map> list=dicussDao.downreply(opusId,sendFloor,n);
		Result result=new Result();
		result.setStatus(0);
		result.setMsg("��ѯ���۳ɹ�");
		result.setData(list);
		return result;
	}


	public Result floor(Integer opusId) {
		Integer num=dicussDao.floor(opusId);
		Result result=new Result();
		result.setMsg("��ѯ���¥��ɹ�");
		result.setStatus(0);
		result.setData(num);
		return result;
	}
	
	

}
