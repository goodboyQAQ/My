package com.async.handler;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.async.EventHandler;
import com.async.EventModel;
import com.async.EventType;
import com.entity.Dicuss;
import com.entity.Msg;
import com.entity.Opus;
import com.entity.Result;
import com.entity.User;
import com.service.DicussService;
import com.service.MsgService;
import com.service.OpusService;
import com.service.UserService;


@Component
public class NolikeHandler implements EventHandler {
    
	@Resource
	MsgService msgService;
	@Resource
	UserService userService;
	@Resource
	OpusService opusService;
	@Resource
	DicussService dicussService;

    public void doHandler(EventModel model) {
        System.out.println("###############nolikeHandler的doHandler方法####################");
        
        int fromId=model.getActorId();
        int dicussId=model.getEntityId();
        Result result=dicussService.findById(dicussId);
        Dicuss dicuss=(Dicuss) result.getData();
        int toId=dicuss.getUserId();      
        String type=(EventType.LIKE).getValue()+"";
        System.out.println("type="+type);
        result=msgService.beforeDel(dicussId, fromId, type);
        System.out.println(toId+" "+fromId+" "+type);
        Msg msg=(Msg) result.getData();
        if(msg!=null){
        int msgId=msg.getId();
        System.out.println(msgId);
        
        	msgService.del(msgId);
        }
        
    }
    
    //确定likeHandler关注哪些事件类型
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.NOLIKE);
    }

}
