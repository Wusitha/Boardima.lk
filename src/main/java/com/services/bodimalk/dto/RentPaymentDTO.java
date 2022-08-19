package com.services.bodimalk.dto;

import java.sql.Date;

public class RentPaymentDTO {
    private Long id;
    private double amount;
    private Date date;
    private Long boardingPlace;
    private Long boarder;

    public RentPaymentDTO() {
    }

    public RentPaymentDTO(double amount, Date date, Long boardingPlace, Long boarder) {
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
