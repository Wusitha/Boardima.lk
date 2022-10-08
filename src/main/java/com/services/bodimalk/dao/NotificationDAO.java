package com.services.bodimalk.dao;

import com.services.bodimalk.entity.Notification;
import com.services.bodimalk.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;

@Repository
public interface NotificationDAO extends JpaRepository<Notification, Long> {
    public boolean existsByUserAndMessageAndStateAndDate(User user, String message, String state, Date date);
    public boolean existsByUser(User user);
    public List<Notification> findAllByUser(User user);
    public List<Notification> findAllByUserAndState(User user, String state);
    public void deleteAllByUser(User user);

//    @Query(value = "from Notification where user=?1")
//    public List<Notification> searchByUser(Long user);
}
