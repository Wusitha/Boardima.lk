package com.services.bodimalk.dto;

public class ImageDTO {
    private Long id;
    private Long boardingPlace;
    private String url;

    public ImageDTO() {
    }

    public ImageDTO(Long id, Long boardingPlace, String url) {
        this.id = id;
        this.boardingPlace = boardingPlace;
        this.url = url;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "ImageDTO{" +
                "id=" + id +
                ", boardingPlace=" + boardingPlace +
                ", url='" + url + '\'' +
                '}';
    }
}
