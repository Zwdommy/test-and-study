package com.zpy.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zpy.mapper.MeetingRoomMapper;
import com.zpy.pojo.MeetingRoom;
import com.zpy.pojo.MeetingRoomStats;
import com.zpy.service.MeetingRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MeetingRoomServiceImpl extends ServiceImpl<MeetingRoomMapper, MeetingRoom> implements MeetingRoomService {
    
    @Autowired
    private MeetingRoomMapper meetingRoomMapper;
    
    @Override
    public List<MeetingRoomStats> getStatistics() {
        return meetingRoomMapper.getStatistics();
    }
} 