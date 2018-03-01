package com.async;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.service.RedisService;
import com.util.RedisUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

@Service
public class EventConsumer implements InitializingBean, ApplicationContextAware {
    private static final Logger logger = LoggerFactory.getLogger(EventConsumer.class);
    //维护一个map  确定某个事件类型执行哪些handler
    private Map<EventType, List<EventHandler>> config=new HashMap<EventType, List<EventHandler>>();
    private ApplicationContext applicationContext;

    @Resource
    RedisService redisService;


	public void afterPropertiesSet() throws Exception {
		System.out.println("aaaa");
		//1.获取Eventhandler接口的所有实现
		Map<String, EventHandler> map=applicationContext.getBeansOfType(EventHandler.class);
		for(Map.Entry<String, EventHandler> entry:map.entrySet()){
			//遍历调用实现了EventHandler接口的类的重写getSupportEventType()方法
			for(EventType type:entry.getValue().getSupportEventTypes()){
				if(!config.containsKey(type)){
					config.put(type, new ArrayList<EventHandler>());
				}
				config.get(type).add(entry.getValue());
			}
		}
		
		Thread thread=new Thread(new Runnable() {			
			public void run() {
				System.out.println("run方法");
				//阻塞方法,等待资源
				while(true){
					String key=RedisUtil.getEventQueueKey();
					List<String> list=redisService.brpop(0, key);
					System.out.println("取一次");
					for(String msg:list){
						if(msg.equals(key)){
							continue;
						}
						EventModel eventModel = JSON.parseObject(msg, EventModel.class);
						//如果事件不存在
						if(!config.containsKey(eventModel.getType())){
							logger.error("不识别的事件");
							continue;
						}
						for(EventHandler handler:config.get(eventModel.getType())){
							handler.doHandler(eventModel);
						}
					}
				}
			}
		});
		System.out.println("线程跑起来");
		thread.start();
	}


	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		this.applicationContext=arg0;
	}
}
