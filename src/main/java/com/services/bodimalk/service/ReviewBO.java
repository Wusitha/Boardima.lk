package com.services.bodimalk.service;

import com.services.bodimalk.dto.ComplaintDTO;

import java.util.List;

public interface ReviewBO {
    List<ComplaintDTO> getAllReviewsList();

    List<ComplaintDTO> getOwnerReviews(String name);

    String completeReview(int parseInt);
}
