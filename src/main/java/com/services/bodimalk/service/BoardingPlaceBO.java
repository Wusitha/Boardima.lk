package com.services.bodimalk.service;

import com.services.bodimalk.dto.AdvertisementDTO;
import com.services.bodimalk.dto.BoardingPlaceDTO;
<<<<<<< HEAD
import com.services.bodimalk.dto.PlaceDTO;
=======
import com.services.bodimalk.dto.ReviewDTO;
>>>>>>> 0f1b051452fc3e4136c7c790906dc14031f29fba
import com.services.bodimalk.dto.UserDTO;

import java.text.ParseException;
import java.util.List;

public interface BoardingPlaceBO {
    public boolean checkSubscription(BoardingPlaceDTO boardingPlaceDTO);
    public boolean checkAvailabilityOfBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public boolean addBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public BoardingPlaceDTO addReview(ReviewDTO reviewDTO);
    public List<ReviewDTO> findAllReviewsByBoardingPlace(BoardingPlaceDTO boardingPlaceDTO);
    public BoardingPlaceDTO deleteReview(ReviewDTO reviewDTO);
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
