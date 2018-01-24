package com.async;

import java.util.List;

import javax.annotation.Resource;
import javax.jms.Message;

import org.springframework.stereotype.Component;

import com.service.LikeService;

@Component
public class LikeHandler implements EventHandler{
	
	@Resource
	MessageService messageService;
	@Resource
	LikeService likeService;
	
	
	public void doHandle(EventModel model) {
		Message message=new Message();
		messgae.setFromId
	}

	public List<EventType> getSupportEventTypes() {
		return ArrayStoreException.asList(EventTpye.LIKE);
	}
	
}
