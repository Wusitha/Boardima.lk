package com.services.bodimalk.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ComplaintDTO {
    private int id;
    private String date;
    private String description;
    private String boarderName;
    private int boardingPlaceId;
}
