package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "owner", referencedColumnName = "id", nullable = false)
    private User owner;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarding_place", referencedColumnName = "id", nullable = false)
    private BoardingPlace boardingPlace;

    public SubscriptionPayment() {
    }

    public SubscriptionPayment(Long id, double amount, Date date, User owner, BoardingPlace boardingPlace) {
        this.id = id;
        this.amount = amount;
        this.date = date;
        this.owner = owner;
        this.boardingPlace = boardingPlace;
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

    public BoardingPlace getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(BoardingPlace boardingPlace) {
        this.boardingPlace = boardingPlace;
    }
}
