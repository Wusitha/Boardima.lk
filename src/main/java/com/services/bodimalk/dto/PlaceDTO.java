package com.services.bodimalk.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PlaceDTO {
    String location;
    String description;
    String keyMoney;
    String state;
    String rentDate;
    String rentAmount;
    String beds;
    String baths;
    String type;
    String imgUrl;
}
