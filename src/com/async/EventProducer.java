package com.async;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

import javax.annotation.Resource;

import org.apache.commons.collections.buffer.BlockingBuffer;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.service.RedisService;
import com.util.RedisUtil;

@Service
public class EventProducer {

	@Resource
	RedisService redisService;
	
	public boolean fireEvent(EventModel eventModel){
		String json=JSONObjct.toJssonString(eventModel);
		String key=RedisUtil.getEventQueueKey();
		redisService.lpush(key,json);
		return true;
	}
}
