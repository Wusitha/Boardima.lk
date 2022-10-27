package com.services.bodimalk.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AdvertisementDTO {
    int id;
    String location;
    int price;
    String imgUrl;
    int baths;
    int beds;
    String date;
    String description;
    int keyMoney;
    double lat;
    double lon;
    String ownerName;


}
