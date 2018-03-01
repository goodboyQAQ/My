package com.async;

/**
 * Created by nowcoder on 2016/7/30.
 */
public enum EventType {
    LIKE(0),
    COMMENT(1),
    UPLOAD(2),
    MAIL(3),
    FOLLOW(4),
	NOLIKE(5),
	NOFOLLOW(6);

    private int value;
    EventType(int value) { this.value = value; }
    public int getValue() { return value; }
}
