package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingPlace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BoardingPlaceDAO extends JpaRepository<BoardingPlace, Long> {
}
