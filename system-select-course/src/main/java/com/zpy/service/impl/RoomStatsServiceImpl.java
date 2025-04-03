package com.zpy.service.impl;

import com.zpy.mapper.RoomStatsMapper;
import com.zpy.pojo.RoomUsageStats;
import com.zpy.service.RoomStatsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class RoomStatsServiceImpl implements RoomStatsService {
    
    @Autowired
    private RoomStatsMapper roomStatsMapper;
    
    @Override
    public List<RoomUsageStats> getRoomUsageStats(LocalDateTime startTime, LocalDateTime endTime) {
        return roomStatsMapper.getRoomUsageStats(startTime, endTime);
    }
} 