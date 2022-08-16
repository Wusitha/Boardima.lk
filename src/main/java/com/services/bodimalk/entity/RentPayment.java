package com.services.bodimalk.entity;

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

    @ManyToOne
    @JoinColumn(name = "boarding_place", nullable = false)
    private BoardingPlace boardingPlace;

    @ManyToOne
    @JoinColumn(name = "boarder", referencedColumnName = "id", nullable = false)
    private User boarder;

    public RentPayment() {
    }

    public RentPayment(double amount, Date date, BoardingPlace boardingPlace) {
        this.amount = amount;
        this.date = date;
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

    @Override
    public String toString() {
        return "RentPayment{" +
                "id=" + id +
                ", amount=" + amount +
                ", date=" + date +
                ", boardingPlace=" + boardingPlace +
                ", boarder=" + boarder +
                '}';
    }
}
