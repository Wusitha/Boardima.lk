package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.entity.Review;
import com.services.bodimalk.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewDAO extends JpaRepository<Review, Long> {
    public boolean existsByBoarderAndBoardingPlace(User boarder, BoardingPlace boardingPlace);
    public Review findByBoarderAndBoardingPlace(User boarder, BoardingPlace boardingPlace);
}
