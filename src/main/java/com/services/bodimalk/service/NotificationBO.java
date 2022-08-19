package com.services.bodimalk.service;

import com.services.bodimalk.dto.NotificationDTO;
import com.services.bodimalk.dto.NotificationDtoBuilder;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.Notification;

import java.util.List;

public interface NotificationBO {
    public boolean addNotification(NotificationDtoBuilder notificationDtoBuilder);
    public boolean updateNotification(NotificationDtoBuilder notificationDtoBuilder);
    public boolean deleteNotification(NotificationDtoBuilder notificationDtoBuilder);
    public boolean deleteAllNotificationsByUser(UserDTO userDTO);
    public List<NotificationDTO> findAllNotification();
    public List<NotificationDTO> findNotificationsByUser(UserDTO userDTO);
}
