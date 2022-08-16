package com.services.bodimalk.dto;

import java.sql.Date;

public class NotificationDTO {
    private Long id;
    private Long user;
    private String message;
    private String state;
    private Date date;

    public NotificationDTO() {
    }

    public NotificationDTO(Long id, Long user, String message, String state, Date date) {
        this.id = id;
        this.user = user;
        this.message = message;
        this.state = state;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUser() {
        return user;
    }

    public void setUser(Long user) {
        this.user = user;
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

    @Override
    public String toString() {
        return "NotificationDTO{" +
                "id=" + id +
                ", user=" + user +
                ", message='" + message + '\'' +
                ", state='" + state + '\'' +
                ", date=" + date +
                '}';
    }
}
