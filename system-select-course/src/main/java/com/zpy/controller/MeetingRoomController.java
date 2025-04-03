package com.zpy.controller;

import com.zpy.pojo.MeetingRoomStats;
import com.zpy.service.MeetingRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/meetingRoom")
public class MeetingRoomController {
    
    @Autowired
    private MeetingRoomService meetingRoomService;
    
    @RequestMapping("/statistics")
    public String statistics() {
        return "admin-meeting-room-stats";
    }
    
    @RequestMapping("/getStatistics")
    @ResponseBody
    public List<MeetingRoomStats> getStatistics() {
        return meetingRoomService.getStatistics();
    }
} 