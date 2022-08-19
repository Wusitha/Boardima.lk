package com.services.bodimalk.dto;

import com.services.bodimalk.entity.User;

import java.sql.Date;

public class NotificationDTO {
    private Long id;
    private String message;
    private String state;
    private Date date;
    private User user;

    public NotificationDTO() {
    }

    public NotificationDTO(String message, String state, Date date, User user) {
        this.message = message;
        this.state = state;
        this.date = date;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "NotificationDTO{" +
                "id=" + id +
                ", message='" + message + '\'' +
                ", state='" + state + '\'' +
                ", date=" + date +
                ", user=" + user +
                '}';
    }
}
