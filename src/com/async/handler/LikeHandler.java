package com.async.handler;

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
public class LikeHandler implements EventHandler {
    
	@Resource
	MsgService msgService;
	@Resource
	UserService userService;
	@Resource
	OpusService opusService;
	@Resource
	DicussService dicussService;

    public void doHandler(EventModel model) {
        System.out.println("###############likeHandler的doHandler方法####################");
        
        int fromId=model.getActorId();
        int dicussId=model.getEntityId();
        Result result=dicussService.findById(dicussId);
        Dicuss dicuss=(Dicuss) result.getData();
        int toId=dicuss.getUserId();
        int opusId=dicuss.getOpusId();
        String title=dicuss.getMsg();
        result=userService.findById(toId);
        User user=(User) result.getData();
        String nickName=user.getNickName();
        
        String msg ="<a href='../person.jsp?userId="+fromId+"'><b>"+nickName+"</b></a>刚才为您点赞了</br>"
        			+"<a href='../video.jsp?opusId="+opusId+"'>"+title+"</a>";
        
        String type=model.getType().getValue()+"";
        System.out.println("type="+type);
        msgService.add(toId,fromId,dicussId, msg, type);
        System.out.println("卡死了");
    }
    
    //确定likeHandler关注哪些事件类型
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.LIKE);
    }

}
