package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BoardingRequestDAO extends JpaRepository<BoardingRequest, Long> {
}
