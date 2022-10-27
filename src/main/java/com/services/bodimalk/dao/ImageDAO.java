package com.services.bodimalk.dao;

import com.services.bodimalk.entity.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface ImageDAO extends JpaRepository<Image, Long> {


    @Modifying
    @Query(value = "INSERT INTO image (id,url,boarding_place) VALUES(?1,?2,?1)",nativeQuery = true)
    void saveImage(int i, String imgUrl);
}
