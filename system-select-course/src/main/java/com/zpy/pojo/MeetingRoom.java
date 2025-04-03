package com.zpy.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class MeetingRoom {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String roomName;
    private Integer capacity;
    private String location;
    private String status;  // 0-可用 1-已预定
    private String equipment;
} 