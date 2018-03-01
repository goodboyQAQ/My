package com.async;

import java.util.List;

import com.async.EventType;

public interface EventHandler {
	void doHandler(EventModel eventModel);
	List<EventType> getSupportEventTypes();
}
