package com.zpy.pojo;

import lombok.Data;

@Data
public class MeetingRoomStats {
    private String roomName;
    private Integer bookingCount;
    private Integer totalAttendees;
    private Double utilizationRate;
    private String mostPopularTimeSlot;
} 