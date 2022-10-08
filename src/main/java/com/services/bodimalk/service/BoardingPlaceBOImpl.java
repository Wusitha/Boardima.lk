package com.services.bodimalk.service;

import com.services.bodimalk.dao.BoardingPlaceDAO;
import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.dto.ImageDTO;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.util.Globals;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class BoardingPlaceBOImpl implements BoardingPlaceBO{
    private final BoardingPlaceDAO boardingPlaceDAO;
    private final PaymentBO paymentBO;
    private final BoardingRequestBO boardingRequestBO;
    private final UserDAO userDAO;
    private final ImageBO imageBO;

    @Autowired
    public BoardingPlaceBOImpl(BoardingPlaceDAO boardingPlaceDAO, PaymentBO paymentBO, BoardingRequestBO boardingRequestBO, UserDAO userDAO, ImageBO imageBO) {
        this.boardingPlaceDAO = boardingPlaceDAO;
        this.paymentBO = paymentBO;
        this.boardingRequestBO = boardingRequestBO;
        this.userDAO = userDAO;
        this.imageBO = imageBO;
    }

    private BoardingPlace getEntityWithPrimitives(BoardingPlaceDTO boardingPlaceDTO){
        BoardingPlace boardingPlace = new BoardingPlace();
        //set properties
        boardingPlace.setId(boardingPlaceDTO.getId());
        boardingPlace.setLatitude(boardingPlaceDTO.getLatitude());
        boardingPlace.setAltitude(boardingPlaceDTO.getAltitude());
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
        boardingPlace.setOwner(userDAO.findUserById(boardingPlaceDTO.getOwnerId()));

        return boardingPlace;
    }

    private BoardingPlaceDTO getDtoWithPrimitives(BoardingPlace boardingPlace) {
        BoardingPlaceDTO boardingPlaceDTO = new BoardingPlaceDTO();
        //set properties
        boardingPlaceDTO.setId(boardingPlace.getId());
        boardingPlaceDTO.setLatitude(boardingPlace.getLatitude());
        boardingPlaceDTO.setAltitude(boardingPlace.getAltitude());
        boardingPlaceDTO.setDescription(boardingPlace.getDescription());
        boardingPlaceDTO.setKeyMoney(boardingPlace.getKeyMoney());
        boardingPlaceDTO.setState(boardingPlace.getState());
        boardingPlaceDTO.setRate(boardingPlace.getRate());
        boardingPlaceDTO.setDate(boardingPlace.getDate());
        boardingPlaceDTO.setRentDay(boardingPlace.getRentDay());
        boardingPlaceDTO.setRentAmo(boardingPlace.getRentAmo());
        boardingPlaceDTO.setBeds(boardingPlace.getBeds());
        boardingPlaceDTO.setBaths(boardingPlace.getBaths());
        boardingPlaceDTO.setGenderPref(boardingPlace.getGenderPref());
        boardingPlaceDTO.setType(boardingPlace.getType());
        boardingPlaceDTO.setOwnerId(boardingPlace.getOwner().getId());
        return boardingPlaceDTO;
    }

    private Date getDateToday() {
        LocalDate localDate = LocalDate.now();
        return Date.valueOf(localDate);
    }

    private BoardingPlaceDTO getBoardingPlaceDto(BoardingPlace boardingPlace){
        BoardingPlaceDTO boardingPlaceDTO = getDtoWithPrimitives(boardingPlace);
        //set images
        List<ImageDTO> imageDTOS = new ArrayList<>();
        boardingPlace.getImages().forEach(image -> {
            ImageDTO imageDTO = imageBO.getImageDto(image);
            imageDTOS.add(imageDTO);
        });
        boardingPlaceDTO.setImageDTOS(imageDTOS);
        return boardingPlaceDTO;
    }

    private List<BoardingPlaceDTO> getBoardingPlaceDTOs(List<BoardingPlace> boardingPlaces){
        List<BoardingPlaceDTO> boardingPlaceDTOS = new ArrayList<>();

        //set boardingPlaceDTOs
        boardingPlaces.forEach(boardingPlace -> {
            boardingPlaceDTOS.add(getBoardingPlaceDto(boardingPlace));
        });

        return boardingPlaceDTOS;
    }

    @Override
    public boolean checkSubscription(BoardingPlaceDTO boardingPlaceDTO) {
        return true;
    }

    @Override
    public boolean checkAvailabilityOfBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        return true;
    }

    @Override
    public boolean addBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set boarding place entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);
        //set properties
        boardingPlace.setState(Globals.NOT_PAID);
        boardingPlace.setDate(getDateToday());
        boardingPlace.setRate(Globals.DEFAULT_RATE);

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
    public BoardingPlaceDTO rateBoardingPlace(BoardingPlaceDTO boardingPlaceDTO, double rate) {
        //rate calculation function

        return boardingPlaceDTO;
    }

    @Override
    public boolean updateBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);

        //check rate
        if(boardingPlaceDTO.getRate() <= 5 && boardingPlaceDTO.getRate() >= 0){
            //save boarding place
            try {
                boardingPlaceDAO.save(boardingPlace);
                return true;
            }catch (Exception e){
                System.out.println(e);
                return false;
            }
        }

        return false;
    }

    @Override
    public boolean deleteBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);

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
        BoardingPlace boardingPlace = boardingPlaceDAO.findBoardingPlaceById(boardingPlaceDTO.getId());
        return null;
    }

    @Override
    public List<BoardingPlaceDTO> getAllBoardingPlaces() {
        List<BoardingPlace> boardingPlaces = boardingPlaceDAO.findAll();
        return getBoardingPlaceDTOs(boardingPlaces);
    }

    @Override
    public List<BoardingPlaceDTO> getAllAds() {
        List<BoardingPlace> boardingPlaces = boardingPlaceDAO.findAllByState(Globals.STATE_ACTIVE);
        return getBoardingPlaceDTOs(boardingPlaces);
    }

    @Override
    public List<BoardingPlaceDTO> getAllAdsByOwner(UserDTO userDTO) {
        List<BoardingPlace> boardingPlaces = boardingPlaceDAO.findAllByOwner(userDAO.findUserById(userDTO.getId()));
        return getBoardingPlaceDTOs(boardingPlaces);
    }

    @Override
    public List<BoardingPlaceDTO> getAllBoardingPlacesByTypeAndState(BoardingPlaceDTO boardingPlaceDTO) {
        List<BoardingPlace> boardingPlaces = boardingPlaceDAO.findAllByTypeAndState(boardingPlaceDTO.getType(), boardingPlaceDTO.getState());
        return getBoardingPlaceDTOs(boardingPlaces);
    }

    @Override
    public List<UserDTO> getBoarderListByBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        return null;
    }
}
