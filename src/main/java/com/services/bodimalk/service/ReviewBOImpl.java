package com.services.bodimalk.service;

import com.services.bodimalk.dao.BoardingPlaceDAO;
import com.services.bodimalk.dao.ReviewDAO;
import com.services.bodimalk.dto.ComplaintDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ReviewBOImpl implements  ReviewBO {
    @Autowired
    ReviewDAO reviewDAO;
    @Autowired
    BoardingPlaceDAO boardingPlaceDAO;

    @Override
    public List<ComplaintDTO> getAllReviewsList() {
        List<ReviewDAO.Complaint> reviewsAsObjects= reviewDAO.getAllReviews();
        List<ComplaintDTO> complaints=new ArrayList<>();
        for(ReviewDAO.Complaint complaint:reviewsAsObjects)
        {

           complaints.add(new ComplaintDTO(complaint.getId(),complaint.getDate(),complaint.getDescription(),complaint.getBoarder(),complaint.getBoardingPlaceId()));
        }





        return complaints;


    }

    @Override
    public List<ComplaintDTO> getOwnerReviews(String name) {
        int boardingPlaceId=boardingPlaceDAO.findBoardingPlaceId("amdcushanibandara@gmail.com");
        List<ReviewDAO.Complaint> reviewsAsObjects= reviewDAO.getOwnerReviews(boardingPlaceId);
        List<ComplaintDTO> complaints=new ArrayList<>();
        for(ReviewDAO.Complaint complaint:reviewsAsObjects)
        {

            complaints.add(new ComplaintDTO(complaint.getId(),complaint.getDate(),complaint.getDescription(),complaint.getBoarder(),complaint.getBoardingPlaceId()));
        }





        return complaints;
    }

    @Override
    public String completeReview(int parseInt) {
        try{
            reviewDAO.completeReview(parseInt);
            return "success";
        }catch (Exception e)
        {
            return e.getMessage();
        }
    }
}
