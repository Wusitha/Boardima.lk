package com.services.bodimalk.dao;

import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.sql.Date;
import java.util.List;

@Repository
@Transactional
public interface BoardingPlaceDAO extends JpaRepository<BoardingPlace, Long> {
    public BoardingPlace findBoardingPlaceById(Long id);
    public List<BoardingPlace> findAllByOwner(User owner);
    public List<BoardingPlace> findAllByTypeAndState(int type, String state);
    public List<BoardingPlace> findAllByState(String state);
    @Query(value = "SELECT boarding_place.id AS id,boarding_place.location AS location,boarding_place.rent_amo AS price,image.url AS url FROM boarding_place JOIN image ON boarding_place.id=image.boarding_place WHERE boarding_place.state='P'",nativeQuery = true)
    List<Advertisement> findAllAdvertisements();

    @Query(value = "SELECT boarding_place.id AS id,boarding_place.location AS location,boarding_place.rent_amo AS price,image.url AS url,boarding_place.baths AS baths,boarding_place.beds AS beds,boarding_place.date AS date,boarding_place.description AS description,boarding_place.latitude AS lat,boarding_place.altitude AS lon,boarding_place.key_money AS keyMoney,user.first_name AS owner FROM boarding_place JOIN image ON boarding_place.id=image.boarding_place join user ON boarding_place.owner=user.id WHERE boarding_place.id=?1",nativeQuery = true)
    AdvertisementAll findAdvertisement(int id);
    @Query(value = "SELECT boarding_place.id FROM boarding_place join user ON user.id=boarding_place.owner WHERE user.email=?1",nativeQuery = true)
    int findBoardingPlaceId(String name);


    @Query(value ="UPDATE boarding_place SET state='A' WHERE id=?1" ,nativeQuery = true)
    @Modifying
    void acceptBoardingPlace(int id);

    @Query(value = "SELECT MAX(id) FROM boarding_place",nativeQuery = true)
    int getPrevioudId();

    @Modifying
    @Query(value = "INSERT INTO boarding_place (id,location,state,baths,beds,date,description,key_money,rent_amo,type,gender_pref,rate,rent_day,owner) VALUES (?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,'G',10,?11,6)",nativeQuery = true)
    void saveBoardingPlace(int i, String location, String state, int parseInt, int parseInt1, Date valueOf, String description, String keyMoney, String rentAmount, int i1,int day);

    public  static  interface  AdvertisementAll{
        int getId();
        String getLocation();
        int getPrice();
        String getUrl();

        int getBaths();
        int getBeds();
        String getDate();
        String getDescription();
        double getLat();
        double getLon();
        int getKeyMoney();
        String getOwner();
    }

    public static interface Advertisement{
            int getId();
            String getLocation();
            int getPrice();
            String getUrl();




        }


}
