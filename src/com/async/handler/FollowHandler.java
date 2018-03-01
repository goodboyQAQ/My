package com.async.handler;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.async.EventHandler;
import com.async.EventModel;
import com.async.EventType;
import com.dao.MsgDao;
import com.entity.Result;
import com.entity.User;
import com.service.MsgService;
import com.service.UserService;


@Component
public class FollowHandler implements EventHandler {
    
	@Resource
	MsgService msgService;
	@Resource
	UserService userService;
	
    public void doHandler(EventModel model) {
        System.out.println("###############followHandler��doHandler����####################");
       
        int toId=model.getEntityOwnerId();
        
        int fromId=model.getActorId();
        
        Result result=userService.findById(fromId);
        User user=(User) result.getData();
        String nickName=user.getNickName();
        String msg ="<a href='../person.jsp?userId="+fromId+"'><b>"+nickName+"</b>��ע����";
        int entityId=0;
        String type=model.getType().getValue()+"";
        msgService.add(toId,fromId,entityId,msg,type);
    }
    
    //ȷ��likeHandler��ע��Щ�¼�����
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.FOLLOW);
    }

}
