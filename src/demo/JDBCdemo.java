package demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;



public class JDBCdemo {
	
	   public static boolean isUgly(int num) {
	        // write your code here
		   System.out.println("num"+num);
	        if(num==1){
	            return true;
	        }
	        while(num!=2&&num!=3&&num!=5){
	            if(num%2==0){
	            	System.out.println(num);
	               return isUgly(num/2);
	            }
	            if(num%3==0){
	            	System.out.println(num);
	                return isUgly(num/3);
	            }
	            if(num%5==0){
	            	System.out.println(num);
	                return isUgly(num/5);
	            }
	            return false;
	            
	        }
	        return true;
	    }
	 public static void main(String[] args){
		 
		 System.out.println(isUgly(45));
	 }
}
