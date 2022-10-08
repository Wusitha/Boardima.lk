package com.services.bodimalk.controller;

import com.services.bodimalk.dto.NotificationDTO;
import com.services.bodimalk.dto.NotificationDtoBuilder;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.service.NotificationBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(path = "/notification")
@CrossOrigin(origins = "*")
public class NotificationController {
    private final NotificationBO notificationBO;
    @Autowired
    public NotificationController(NotificationBO notificationBO) {
        this.notificationBO = notificationBO;
    }

    @PostMapping("/add")
    public ResponseEntity addNotification(@Valid @RequestBody NotificationDtoBuilder notificationDtoBuilder){

        if (notificationBO.addNotification(notificationDtoBuilder))
            return new ResponseEntity<>("Notification added successfully.", HttpStatus.OK);
        return new ResponseEntity<>("Cannot add notification", HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/update")
    public ResponseEntity updateNotification(@Valid @RequestBody NotificationDtoBuilder notificationDtoBuilder) {
        if (notificationBO.updateNotification(notificationDtoBuilder))
            return new ResponseEntity<>("Notification updated", HttpStatus.OK);
        //System.out.println(new ObjectMapper().writeValueAsString(notificationBO.updateNotification(notificationDtoBuilder)));
        return new ResponseEntity<>("Notification is not updated", HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/delete")
    public ResponseEntity deleteNotification(@Valid @RequestBody NotificationDtoBuilder notificationDtoBuilder) {

        if (notificationBO.deleteNotification(notificationDtoBuilder))
            return new ResponseEntity<>("Notification deleted", HttpStatus.OK);
        return new ResponseEntity<>("Notification is not deleted", HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/delete/{user}")
    public ResponseEntity deleteAllByUser(@PathVariable Long user) {
        UserDTO userDTO = new UserDTO();
        userDTO.setId(user);
        if (notificationBO.deleteAllNotificationsByUser(userDTO))
            return new ResponseEntity<>("Notifications deleted", HttpStatus.OK);
        return new ResponseEntity<>("Notifications are not deleted", HttpStatus.BAD_REQUEST);
    }

    @GetMapping("/get")
    public List<NotificationDTO> getAllNotifications(){
        return notificationBO.findAllNotification();
    }

    @GetMapping("/get/{user}")
    public List<NotificationDTO> getAllNotificationsByUser(@PathVariable Long user){
        UserDTO userDTO = new UserDTO();
        userDTO.setId(user);
        return notificationBO.findNotificationsByUser(userDTO);
    }
}
