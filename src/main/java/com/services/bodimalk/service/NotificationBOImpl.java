package com.services.bodimalk.service;

import com.services.bodimalk.dao.NotificationDAO;
import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.dto.NotificationDTO;
import com.services.bodimalk.dto.NotificationDtoBuilder;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.Notification;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.util.Globals;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class NotificationBOImpl implements NotificationBO{
    @Autowired
    private NotificationDAO notificationDAO;
    @Autowired
    private UserDAO userDAO;

    private Date getDateToday() {
        LocalDate localDate = LocalDate.now();
        return Date.valueOf(localDate);
    }
    private User getUserEntity(Long userId) {
        Optional<User> user = userDAO.findById(userId);
        User userEntity = new User();
        BeanUtils.copyProperties(user,userEntity);
        userEntity.setId(userId);
        return userEntity;
    }

    private NotificationDTO getNotificationDTO(NotificationDtoBuilder notificationDtoBuilder) {
        NotificationDTO notificationDTO = new NotificationDTO();
        BeanUtils.copyProperties(notificationDtoBuilder, notificationDTO);
        //set user
        User user = getUserEntity(notificationDtoBuilder.getUserId());
        notificationDTO.setUser(user);

        return notificationDTO;
    }
    @Override
    public boolean addNotification(NotificationDtoBuilder notificationDtoBuilder) {
        Notification notification = new Notification();

        //get notification DTO
        NotificationDTO notificationDTO = getNotificationDTO(notificationDtoBuilder);
        //copy properties
        BeanUtils.copyProperties(notificationDTO, notification);

        //set attributes
        notification.setState(Globals.STATE_UNREAD);
        notification.setDate(getDateToday());

        if (!notificationDAO.existsByUserAndMessageAndStateAndDate(notification.getUser(),notification.getMessage(),notification.getState(),notification.getDate())){
            notificationDAO.save(notification);
            return true;
        }
        return false;
    }

    @Override
    public boolean updateNotification(NotificationDtoBuilder notificationDtoBuilder) {
        Notification notification = new Notification();

        //get notification DTO
        NotificationDTO notificationDTO = getNotificationDTO(notificationDtoBuilder);
        BeanUtils.copyProperties(notificationDTO, notification);
        notification.setDate(getDateToday());

        if (notificationDAO.existsById(notification.getId())) {
            notificationDAO.save(notification);
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteNotification(NotificationDtoBuilder notificationDtoBuilder) {

        if (notificationDAO.existsById(notificationDtoBuilder.getId())) {
            notificationDAO.deleteById(notificationDtoBuilder.getId());
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteAllNotificationsByUser(UserDTO userDTO) {
        User user = getUserEntity(userDTO.getId());
        if (notificationDAO.existsByUser(user)) {
            notificationDAO.deleteAllByUser(user);
            return true;
        }
        return false;
    }

    private List<NotificationDTO> convertNotificationsToDTOs(List<Notification> notifications) {
        List<NotificationDTO> notificationDTOS = new ArrayList<>();
        notifications.stream().forEach(notification -> {
            NotificationDTO notificationDTO = new NotificationDTO();
            BeanUtils.copyProperties(notification,notificationDTO);
            notificationDTOS.add(notificationDTO);
        });

        return notificationDTOS;
    }

    @Override
    public List<NotificationDTO> findAllNotification() {
        List<Notification> notifications = notificationDAO.findAll();
        return convertNotificationsToDTOs(notifications);
    }

    @Override
    public List<NotificationDTO> findNotificationsByUser(UserDTO userDTO) {
        List<Notification> notifications = notificationDAO.findAllByUser(getUserEntity(userDTO.getId()));
        //List<Notification> notifications = notificationDAO.searchByUser(userDTO.getId());
        return convertNotificationsToDTOs(notifications);
    }
}
