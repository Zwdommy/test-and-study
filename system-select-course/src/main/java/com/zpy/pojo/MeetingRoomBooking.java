package com.zpy.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import java.util.Date;

@Data
public class MeetingRoomBooking {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer roomId;
    private Integer userId;
    private Date bookingDate;
    private String timeSlot;  // 时间段（上午/下午/晚上）
    private String purpose;
    private Integer attendees;
    private Date createTime;
    private String status;  // 0-待审核 1-已通过 2-已拒绝
} 