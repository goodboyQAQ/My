package demo;

import java.util.List;

import redis.clients.jedis.Jedis;

public class RedisJava {
	public static void main(String[] args) {
	      //���ӱ��ص� Redis ����
	      Jedis jedis = new Jedis("localhost");
	      
	      System.out.println("Connection to server sucessfully");
	      //�鿴�����Ƿ�����
	      System.out.println("Server is running: "+jedis.ping());
	      jedis.lpush("t", "Redis");
	      jedis.lpush("t", "Mongodb");
	      jedis.lpush("t", "Mysql");
	     // ��ȡ�洢�����ݲ����
	     List<String> list = jedis.lrange("t", 0 ,44);
	     for(int i=0; i<list.size(); i++) {        
	    	 System.out.println("redis:: "+i+" "+list.get(i));      
	     }
	     System.out.println(jedis.lpush("t", "ddd"));
	 }
}
