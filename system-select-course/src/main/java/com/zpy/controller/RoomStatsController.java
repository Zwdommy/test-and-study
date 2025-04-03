package com.zpy.controller;

import com.zpy.pojo.RoomUsageStats;
import com.zpy.service.RoomStatsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/roomStats")
public class RoomStatsController {
    
    @Autowired
    private RoomStatsService roomStatsService;
    
    @GetMapping("/usage")
    public String showUsageStats() {
        return "course/admin-room-stats";
    }
    
    @GetMapping("/getStats")
    @ResponseBody
    public List<RoomUsageStats> getUsageStats(
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime startTime,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime endTime) {
        if (startTime == null) {
            startTime = LocalDateTime.now().minusDays(7); // 默认查询最近7天
        }
        if (endTime == null) {
            endTime = LocalDateTime.now();
        }
        return roomStatsService.getRoomUsageStats(startTime, endTime);
    }
} 