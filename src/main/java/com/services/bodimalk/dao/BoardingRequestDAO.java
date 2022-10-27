package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
@Transactional
@Repository
public interface BoardingRequestDAO extends JpaRepository<BoardingRequest, Long> {
    @Query(value ="UPDATE boarding_request SET state='A' WHERE boarder=?1" ,nativeQuery = true)
    @Modifying
    void acceptBoarder(int id);

    @Query(value = "SELECT user.id AS id,user.first_name AS firstName,user.last_name AS lastName,user.dob AS dob,user.gender AS gender,user.contact AS contact FROM user JOIN boarding_request ON boarding_request.boarder=user.id WHERE boarding_request.boarding_place=?1 AND boarding_request.state='P'",nativeQuery = true)
    List<Boarder> getRequestedBoarders(int boardingPlaceId);

    public static interface Boarder{
        int getId();
        String getFirstName();
        String getLastName();
        String getDob();
        String getGender();
        String getContact();
    }
}
