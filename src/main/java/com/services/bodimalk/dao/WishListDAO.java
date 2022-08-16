package com.services.bodimalk.dao;

import com.services.bodimalk.entity.WishList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WishListDAO extends JpaRepository<WishList, Long> {
}
