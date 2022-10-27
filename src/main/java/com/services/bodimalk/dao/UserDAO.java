package com.services.bodimalk.dao;

import com.services.bodimalk.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDAO extends JpaRepository<User, Long> {
    public User findUserById(Long id);
    public boolean existsByEmail(String email);
    public boolean existsByNic(String nic);
    public boolean existsByEmailAndNic(String email, String nic);
    public List<User> findAllByType(String type);
    public User findByEmail(String email);
    public User findByNic(String nic);

    @Query(value = "SELECT * FROM user WHERE type!='A'",nativeQuery = true)
    List<User> getAllUsers();

    @Query(value = "SELECT * FROM user WHERE type='B'",nativeQuery = true)
    List<User> getAllBoarders();

    @Query(value = "SELECT * FROM user WHERE type='O'",nativeQuery = true)
    List<User> getAllBoardingOwners();
}
