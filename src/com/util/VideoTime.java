package com.util;

import java.io.File;

import it.sauronsoftware.jave.Encoder;
import it.sauronsoftware.jave.MultimediaInfo;

public class VideoTime {
	public static void main(String[] args){
		         File source = new File("./WebRoot/video/Tom.webm");
		         Encoder encoder = new Encoder();
		        File[] file = source.listFiles();
		        long sum =0;
		        for (File file2 : file) {
		            try {
		                  MultimediaInfo m = encoder.getInfo(file2);
	                  long ls = m.getDuration()/1000; //ls�ǻ�ȡ��������
		               sum += ls;
		            } catch (Exception e) {
		                e.printStackTrace();
		             }
	        }
	        double sum1 = (double)sum;
	         double sum2 =sum1/3600;         // ת����Ϊ��Сʱ
	         System.out.println(sum2);
	     }
}
