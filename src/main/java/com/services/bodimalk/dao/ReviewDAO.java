package com.services.bodimalk.dao;

import com.services.bodimalk.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface ReviewDAO extends JpaRepository<Review, Long> {

    @Query(value = "SELECT review.id AS id,review.date AS date,review.description AS description,user.first_name AS Boarder,review.boarding_place AS boardingPlaceId FROM review JOIN user ON review.boarder=user.id WHERE review.state='C'",nativeQuery = true)
    List<Complaint> getAllReviews();

    @Query(value = "SELECT review.id AS id,review.date AS date,review.description AS description,user.first_name AS Boarder,review.boarding_place AS boardingPlaceId FROM review JOIN user ON review.boarder=user.id WHERE review.state='P' AND review.boarding_place=?1",nativeQuery = true)
    List<Complaint> getOwnerReviews(int id);

    @Query(value = "UPDATE review SET state='F' WHERE id=?1",nativeQuery = true)
    @Modifying
    void completeReview(int parseInt);

    public static interface Complaint{
        int getId();
        String getDate();
        String getDescription();
        String getBoarder();
        int getBoardingPlaceId();
    }
}
