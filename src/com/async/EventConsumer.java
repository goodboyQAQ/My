package com.async;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.annotation.Resource;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.service.RedisService;
import com.util.RedisUtil;

@Service
public class EventConsumer implements InitializingBean,ApplicationContextAware{
	private static final Logger logger=LoggerFactory.getLogger(EventConsumer.class);
	private Map<EventType,List<EventHandler>> config=new HashMap<EventType,List<EventHandler>>();
	private ApplicationContext applicationContext;
	
	@Resource
	RedisService redisService;
	
	public void afterPropertiesSet() throws Exception {
		Map<String, EventHandler> beans=applicationContext.getBeansOfType(EventHandler.class);
		if(beans!=null){
			for(Map.Entry<String,EventHandler> entry:beans.entrySet()){
				List<EventType> eventTypes=entry.getValue().getSupportEventTypes();
				for(EventType type:eventTypes){
					if(!config.containsKey(type)){
						config.put(type,new ArrayList<EventHandler>());
					}
					config.get(type).add(entry.getValue());
				}
			}
		}
	}

	Thread thread=new Thread(new Runnable(){
		public void run(){
			while(true){
				String key=RedisUtil.getEventQueueKey();
				List<String> eventStrings=redisService.brpop(0,key);
				for(String message:events){
					if(message.equals(key)){
						continue;
					}
					
					EventModel eventModel=JSON.parseObject(message,EventModel.class);
					if(!config.containsKey(eventModel.getType())){
						logger.error("不能识别的事件");
						continue;
					}
					
					for(EventHandler handler:config.get(eventModel.getType())){
						handler.doHandle(eventModel);
					}
				}
			}
		}
		
	});
	
	
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		this.applicationContext=arg0;
	}
}
