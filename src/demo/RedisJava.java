package demo;

import java.util.List;

import redis.clients.jedis.Jedis;

public class RedisJava {
	public static void main(String[] args) {
	      //连接本地的 Redis 服务
	      Jedis jedis = new Jedis("localhost");
	      
	      System.out.println("Connection to server sucessfully");
	      //查看服务是否运行
	      System.out.println("Server is running: "+jedis.ping());
	      jedis.lpush("t", "Redis");
	      jedis.lpush("t", "Mongodb");
	      jedis.lpush("t", "Mysql");
	     // 获取存储的数据并输出
	     List<String> list = jedis.lrange("t", 0 ,44);
	     for(int i=0; i<list.size(); i++) {        
	    	 System.out.println("redis:: "+i+" "+list.get(i));      
	     }
	     System.out.println(jedis.lpush("t", "ddd"));
	 }
}
