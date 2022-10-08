package com.services.bodimalk.dao;

import com.services.bodimalk.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewDAO extends JpaRepository<Review, Long> {
}
