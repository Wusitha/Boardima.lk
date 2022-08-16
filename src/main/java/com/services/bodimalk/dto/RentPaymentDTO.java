package com.services.bodimalk.dto;

import java.sql.Date;

public class RentPaymentDTO {
    private Long id;
    private Long boardingPlace;
    private Long boarder;
    private double amount;
    private Date date;

    public RentPaymentDTO() {
    }

    public RentPaymentDTO(Long id, Long boardingPlace, Long boarder, double amount, Date date) {
        this.id = id;
        this.boardingPlace = boardingPlace;
        this.boarder = boarder;
        this.amount = amount;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(Long boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    public Long getBoarder() {
        return boarder;
    }

    public void setBoarder(Long boarder) {
        this.boarder = boarder;
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

    @Override
    public String toString() {
        return "RentPayment{" +
                "id=" + id +
                ", boardingPlace=" + boardingPlace +
                ", boarder=" + boarder +
                ", amount=" + amount +
                ", date=" + date +
                '}';
    }
}
