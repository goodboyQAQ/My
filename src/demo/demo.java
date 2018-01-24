package demo;

import java.util.Random;

import org.springframework.stereotype.Service;

import com.service.RedisService;

public class demo {
	public static void main(String[] args){
		Random r=new Random();
		int i=r.nextInt(100000);
		if(i%2==0){
			System.out.println(i+"Âò");
		}
		if(i%2==1){
			System.out.println(i+"²»Âò");
		}
	}
	
	
}
