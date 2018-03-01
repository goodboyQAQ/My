package com.async.handler;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.async.EventHandler;
import com.async.EventModel;
import com.async.EventType;
import com.entity.Dicuss;
import com.entity.Opus;
import com.entity.Result;
import com.entity.User;
import com.service.DicussService;
import com.service.MsgService;
import com.service.OpusService;
import com.service.UserService;


@Component
public class CommentHandler implements EventHandler {
    
	@Resource
	MsgService msgService;
	@Resource
	UserService userService;
	@Resource
	OpusService opusService;
	@Resource
	DicussService dicussService;

    public void doHandler(EventModel model) {
        System.out.println("###############commentHandler��doHandler����####################");
  
        int toId=model.getEntityOwnerId();
        int fromId=model.getActorId();
        int entityId=model.getEntityId();
        
        Result result=userService.findById(fromId);
        User user=(User) result.getData();
        String nickName=user.getNickName();
        
        result=dicussService.findById(entityId);
        Dicuss dicuss=(Dicuss) result.getData();
        int opusId=dicuss.getOpusId();
        String title=dicuss.getMsg();
        
        String msg ="�����������µĻظ�</br>"+
        			"<a href='../person.jsp?userId='"+fromId+"'>"+nickName+"</a>:"+
        			"<a href='../video.jsp?opusId="+opusId+"'>"+title+"</a>";
        
        String type=model.getType().getValue()+"";
        
        msgService.add(toId, fromId,entityId, msg, type);
    }
    
    //ȷ��likeHandler��ע��Щ�¼�����
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.COMMENT);
    }

}
