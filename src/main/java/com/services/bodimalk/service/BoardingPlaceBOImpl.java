package com.services.bodimalk.service;

import com.services.bodimalk.dao.BoardingPlaceDAO;
import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.util.Globals;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@Service
public class BoardingPlaceBOImpl implements BoardingPlaceBO{
    @Autowired
    BoardingPlaceDAO boardingPlaceDAO;
    @Autowired
    PaymentBO paymentBO;
    @Autowired
    BoardingRequestBO boardingRequestBO;
    @Autowired
    UserDAO userDAO;

    private BoardingPlace getEntityWithPrimitives(BoardingPlaceDTO boardingPlaceDTO){
        BoardingPlace boardingPlace = new BoardingPlace();
        //set properties
        boardingPlace.setId(boardingPlaceDTO.getId());
        boardingPlace.setLocation(boardingPlaceDTO.getLocation());
        boardingPlace.setDescription(boardingPlaceDTO.getDescription());
        boardingPlace.setKeyMoney(boardingPlaceDTO.getKeyMoney());
        boardingPlace.setState(boardingPlaceDTO.getState());
        boardingPlace.setRate(boardingPlaceDTO.getRate());
        boardingPlace.setDate(boardingPlaceDTO.getDate());
        boardingPlace.setRentDay(boardingPlaceDTO.getRentDay());
        boardingPlace.setRentAmo(boardingPlaceDTO.getRentAmo());
        boardingPlace.setBeds(boardingPlaceDTO.getBeds());
        boardingPlace.setBaths(boardingPlaceDTO.getBaths());
        boardingPlace.setGenderPref(boardingPlaceDTO.getGenderPref());
        boardingPlace.setType(boardingPlaceDTO.getType());

        return boardingPlace;
    }

    private BoardingPlaceDTO getDtoWithPrimitives(BoardingPlace boardingPlace) {
        BoardingPlaceDTO boardingPlaceDTO = new BoardingPlaceDTO();
        //set properties
        boardingPlaceDTO.setId(boardingPlace.getId());
        boardingPlaceDTO.setLocation(boardingPlace.getLocation());
        boardingPlaceDTO.setDescription(boardingPlace.getDescription());
        boardingPlaceDTO.setKeyMoney(boardingPlace.getKeyMoney());
        boardingPlaceDTO.setState(boardingPlace.getState());
        boardingPlaceDTO.setRate(boardingPlace.getRate());
        boardingPlaceDTO.setDate(boardingPlace.getDate());
        boardingPlaceDTO.setRentAmo(boardingPlace.getRentAmo());
        boardingPlaceDTO.setBeds(boardingPlace.getBeds());
        boardingPlaceDTO.setBaths(boardingPlace.getBaths());
        boardingPlaceDTO.setGenderPref(boardingPlace.getGenderPref());
        boardingPlaceDTO.setType(boardingPlace.getType());
        return boardingPlaceDTO;
    }

    private Date getDateToday() {
        LocalDate localDate = LocalDate.now();
        return Date.valueOf(localDate);
    }

    @Override
    public boolean checkSubscription(BoardingPlaceDTO boardingPlaceDTO) {
        return true;
    }

    @Override
    public boolean checkAvailabilityOfBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        return false;
    }

    @Override
    public boolean addBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set boarding place entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);
        //set properties
        boardingPlace.setOwner(userDAO.findUserById(boardingPlaceDTO.getOwnerId()));
        boardingPlace.setState(Globals.NOT_PAID);
        boardingPlace.setDate(getDateToday());
        boardingPlace.setRate(0);

        //save boarding place
        try {
            boardingPlaceDAO.save(boardingPlace);
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    @Override
    public boolean updateBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);
        //set owner
        boardingPlace.setOwner(userDAO.findUserById(boardingPlaceDTO.getOwnerId()));
        //save boarding place
        try {
            boardingPlaceDAO.save(boardingPlace);
            return true;
        }catch (Exception e){
            System.out.println(e);
            return false;
        }
    }

    @Override
    public boolean deleteBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);
        //set owner
        boardingPlace.setOwner(userDAO.findUserById(boardingPlaceDTO.getOwnerId()));
        //delete boarding place
        try {
            boardingPlaceDAO.delete(boardingPlace);
            return true;
        } catch (Exception e){
            System.out.println(e);
            return false;
        }
    }

    @Override
    public BoardingPlaceDTO getBoardingPlaceById(BoardingPlaceDTO boardingPlaceDTO) {
        return null;
    }

    @Override
    public List<BoardingPlaceDTO> getAllBoardingPlaces() {
        return null;
    }

    @Override
    public List<BoardingPlaceDTO> getAllAds() {
        return null;
    }

    @Override
    public List<BoardingPlaceDTO> getAllBoardingPlacesByTypeAndState(BoardingPlaceDTO boardingPlaceDTO) {
        return null;
    }

    @Override
    public List<UserDTO> getBoarderListByBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        return null;
    }
}
