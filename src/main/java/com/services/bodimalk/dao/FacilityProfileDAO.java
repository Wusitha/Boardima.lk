package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.entity.FacilityProfile;
import com.services.bodimalk.entity.FacilityProfilePK;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FacilityProfileDAO extends JpaRepository<FacilityProfile,FacilityProfilePK> {
    public List<FacilityProfile> findAllByBoardingPlace(BoardingPlace boardingPlace);
}
