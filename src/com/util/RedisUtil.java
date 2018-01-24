package com.util;

public class RedisUtil {
	private static String SPLIT=":";
	private static String BZ_LIKE="LIKE";
	private static String BZ_DISLIKE="DISLIKE";
	private static String BZ_EVENTQUEUE="EVENT_QUEUE";
	
	public static String getLikeKey(int entityType,int entityId){
		return BZ_LIKE+SPLIT+String.valueOf(entityType)+SPLIT+String.valueOf(entityId);
	}
	
	public static String getDisLikeKey(int entityType,int entityId){
		return BZ_DISLIKE+SPLIT+String.valueOf(entityType)+SPLIT+String.valueOf(entityId);
	}
	
	public static String getEventQueueKey(){
		return BZ_EVENTQUEUE;
	}
}
