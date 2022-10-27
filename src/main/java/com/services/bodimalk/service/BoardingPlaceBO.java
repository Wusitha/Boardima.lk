package com.services.bodimalk.service;

import com.services.bodimalk.dto.AdvertisementDTO;
import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.dto.PlaceDTO;
import com.services.bodimalk.dto.UserDTO;

import java.text.ParseException;
import java.util.List;

public interface BoardingPlaceBO {
    public boolean checkSubscription(BoardingPlaceDTO boardingPlaceDTO);
    public boolean checkAvailabilityOfBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public boolean addBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public boolean updateBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public boolean deleteBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public BoardingPlaceDTO getBoardingPlaceById(BoardingPlaceDTO boardingPlaceDTO);
    public List<BoardingPlaceDTO> getAllBoardingPlaces();
    public List<BoardingPlaceDTO> getAllAds();
    public List<BoardingPlaceDTO> getAllAdsByOwner(UserDTO userDTO);
    public List<BoardingPlaceDTO> getAllBoardingPlacesByTypeAndState(BoardingPlaceDTO boardingPlaceDTO);
    public List<UserDTO> getBoarderListByBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);

    List<AdvertisementDTO> getAllAdvertisements();

    AdvertisementDTO getAdvertisement(int id);

    String acceptBoardingPlace(int id);

    String addNewBoardingPlace(PlaceDTO placeDTO) throws ParseException;
}
