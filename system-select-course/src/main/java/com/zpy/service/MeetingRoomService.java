package com.zpy.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zpy.pojo.MeetingRoom;
import com.zpy.pojo.MeetingRoomStats;

import java.util.List;

public interface MeetingRoomService extends IService<MeetingRoom> {
    List<MeetingRoomStats> getStatistics();
} 