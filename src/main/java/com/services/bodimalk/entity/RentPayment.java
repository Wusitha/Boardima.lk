package com.services.bodimalk.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;

@Entity
public class RentPayment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private double amount;
    @NotNull
    private Date date;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarding_place", nullable = false)
    private BoardingPlace boardingPlace;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "boarder", referencedColumnName = "id", nullable = false)
    private User boarder;

    public RentPayment() {
    }

    public RentPayment(Long id, double amount, Date date, BoardingPlace boardingPlace, User boarder) {
        this.id = id;
        this.amount = amount;
        this.date = date;
        this.boardingPlace = boardingPlace;
        this.boarder = boarder;
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

    public BoardingPlace getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(BoardingPlace boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    public User getBoarder() {
        return boarder;
    }

    public void setBoarder(User boarder) {
        this.boarder = boarder;
    }
}
