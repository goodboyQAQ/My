package com.service;

 
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Service;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;


@Service
public class RedisService implements InitializingBean{

    private Jedis jedis = null;
    private JedisPool pool = null;
    
    public void afterPropertiesSet() throws Exception {
        //初始化
    	System.out.println("初始化Redis咯");
       pool = new JedisPool("localhost");
    }

    public long sadd(String key,String value){
    	Jedis jedis=null;
    	try{
    		jedis=pool.getResource();
    		return jedis.sadd(key,value);
    	}catch(Exception e){
    		
    	}finally{
    		if(jedis!=null){
    			jedis.close();
    		}
    	}
    	return 0;
    }
    
    public long scard(String key){
    	Jedis jedis=null;
    	try{
    		jedis=pool.getResource();
    		return jedis.scard(key);
    	}catch(Exception e){
    		
    	}finally{
    		if(jedis!=null){
    			jedis.close();
    		}
    	}
    	return 0;
    }
    
    public long srem(String key,String value){
    	Jedis jedis=null;
    	try{
    		jedis=pool.getResource();
    		return jedis.srem(key,value);
    	}catch(Exception e){
    		
    	}finally{
    		if(jedis!=null){
    			jedis.close();
    		}
    	}
    	return 0;
    }
    
    public boolean sisremember(String key,String value){
    	Jedis jedis=null;
    	try{
    		jedis=pool.getResource();
    		return jedis.sismember(key,value);
    	}catch(Exception e){
    		
    	}finally{
    		if(jedis!=null){
    			jedis.close();
    		}
    	}
    	return false;
    }
    
   public Set<String> smember(String key){
	   Jedis jedis=null;
	   try{
   		  jedis=pool.getResource();
   		  return jedis.smembers(key);
	   }catch(Exception e){
   		
   	   }finally{
   		   if(jedis!=null){
   			 jedis.close();
   		   }
   	}
   	return null; 
   }

   public long lpush(String key,String value) {
	   Jedis jedis=null;
	   jedis=pool.getResource();
	   return jedis.lpush(key,value);
	
   }

public List<String> brpop(int i, String key) {
	 Jedis jedis=null;
	 jedis=pool.getResource();
	 return jedis.brpop(i, key);
}
   
    
  
    
 
    
    
    
    
}
