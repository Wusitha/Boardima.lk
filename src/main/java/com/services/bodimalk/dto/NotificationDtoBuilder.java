package com.services.bodimalk.dto;

import java.sql.Date;

public class NotificationDtoBuilder {
    private Long id;
    private String message;
    private String state;
    private Date date;
    private Long userId;

    public NotificationDtoBuilder() {
    }

    public NotificationDtoBuilder(String message, String state, Date date, Long userId) {
        this.message = message;
        this.state = state;
        this.date = date;
        this.userId = userId;
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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }
}
