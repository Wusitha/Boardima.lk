package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoardingPlaceDAO extends JpaRepository<BoardingPlace, Long> {
    public BoardingPlace findBoardingPlaceById(Long id);
    public List<BoardingPlace> findAllByOwner(User owner);
    public List<BoardingPlace> findAllByTypeAndState(int type, String state);
    public List<BoardingPlace> findAllByState(String state);
}
