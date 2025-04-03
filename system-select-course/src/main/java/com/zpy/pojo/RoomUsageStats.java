package com.zpy.pojo;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class RoomUsageStats {
    private String roomName;        // 房间名称
    private Long occupiedTime;      // 占用时间（分钟）
    private Long availableTime;     // 开放时间（分钟）
    private Double usageRate;       // 利用率
    private LocalDateTime startTime; // 统计开始时间
    private LocalDateTime endTime;   // 统计结束时间
    private String status;          // 房间状态
} 