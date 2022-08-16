package com.services.bodimalk.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;

@Entity
public class SubscriptionPayment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private double amount;
    @NotNull
    private Date date;
    @ManyToOne
    @JoinColumn(name = "owner", referencedColumnName = "id")
    private User owner;

    public SubscriptionPayment() {
    }

    public SubscriptionPayment(double amount, Date date, User owner) {
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

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    @Override
    public String toString() {
        return "SubscriptionPayment{" +
                "id=" + id +
                ", amount=" + amount +
                ", date=" + date +
                ", owner=" + owner +
                '}';
    }
}
