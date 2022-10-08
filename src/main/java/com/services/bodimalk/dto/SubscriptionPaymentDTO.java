package com.services.bodimalk.dto;

import java.sql.Date;

public class SubscriptionPaymentDTO {
    private Long id;
    private double amount;
    private Date date;
    private Long owner;

    public SubscriptionPaymentDTO() {
    }

    public SubscriptionPaymentDTO(double amount, Date date, Long owner) {
        this.amount = amount;
        this.date = date;
        this.owner = owner;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOwner() {
        return owner;
    }

    public void setOwner(Long owner) {
        this.owner = owner;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "SubscriptionPaymentDTO{" +
                "id=" + id +
                ", owner=" + owner +
                ", date=" + date +
                ", amount=" + amount +
                '}';
    }
}
