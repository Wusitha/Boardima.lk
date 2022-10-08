package com.services.bodimalk.dto;

public class ImageDTO {
    private Long id;
    private String url;
    private Long boardingPlace;

    public ImageDTO() {
    }

    public ImageDTO(String url, Long boardingPlace) {
        this.url = url;
        this.boardingPlace = boardingPlace;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Long getBoardingPlace() {
        return boardingPlace;
    }

    public void setBoardingPlace(Long boardingPlace) {
        this.boardingPlace = boardingPlace;
    }

    @Override
    public String toString() {
        return "ImageDTO{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", boardingPlace=" + boardingPlace +
                '}';
    }
}
