package com.zpy.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zpy.pojo.MeetingRoom;
import com.zpy.pojo.MeetingRoomStats;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MeetingRoomMapper extends BaseMapper<MeetingRoom> {
    List<MeetingRoomStats> getStatistics();
} 