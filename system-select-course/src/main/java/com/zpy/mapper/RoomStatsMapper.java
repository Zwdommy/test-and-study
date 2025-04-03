package com.zpy.mapper;

import com.zpy.pojo.RoomUsageStats;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface RoomStatsMapper {
    List<RoomUsageStats> getRoomUsageStats(@Param("startTime") LocalDateTime startTime, 
                                          @Param("endTime") LocalDateTime endTime);
} 