package com.zpy.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import java.time.LocalTime;

@Data
public class Room {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String roomName;        // 房间名称
    private Integer capacity;       // 容量
    private String location;        // 位置
    private LocalTime openTime;     // 开放时间
    private LocalTime closeTime;    // 关闭时间
    private String status;          // 状态（0-可用，1-维护中）
    private String description;     // 描述
} 