package com.async.handler;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.async.EventHandler;
import com.async.EventModel;
import com.async.EventType;
import com.dao.MsgDao;
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
public class NoFollowHandler implements EventHandler {
    
	@Resource
	MsgService msgService;
	@Resource
	UserService userService;
	@Resource
	OpusService opusService;
	@Resource
	DicussService dicussService;
	@Resource
	MsgDao msgDao;

    public void doHandler(EventModel model) {
        System.out.println("###############noFollowHandler��doHandler����####################");
        int toId=model.getEntityOwnerId();
        
        int fromId=model.getActorId();
        String type=(EventType.FOLLOW).getValue()+"";
        Msg m=msgDao.findIdByUser(toId, fromId, type);
        
        if(m!=null){
        	int msgId=m.getId();
        	msgService.del(msgId);
        }
        
        
    }
    
    //ȷ��likeHandler��ע��Щ�¼�����
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.NOFOLLOW);
    }

}
