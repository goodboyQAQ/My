package com.async;

import com.alibaba.fastjson.JSONObject;
import com.service.RedisService;
import com.util.RedisUtil;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
 * Created by nowcoder on 2016/7/30.
 */
@Service
public class EventProducer {
    @Resource
    RedisService redisService;
    

    public boolean fireEvent(EventModel eventModel) {
        try {
            String json = JSONObject.toJSONString(eventModel);
            String key = RedisUtil.getEventQueueKey();
            redisService.lpush(key, json);
            return true;
        } catch (Exception e) {
        	System.out.println("ÃÌº” ß∞‹");
            return false;
        }
    }
}
