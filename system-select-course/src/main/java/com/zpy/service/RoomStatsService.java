package com.zpy.service;

import com.zpy.pojo.RoomUsageStats;
import java.time.LocalDateTime;
import java.util.List;

public interface RoomStatsService {
    List<RoomUsageStats> getRoomUsageStats(LocalDateTime startTime, LocalDateTime endTime);
} 