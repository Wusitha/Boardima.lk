package com.services.bodimalk.service;

import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.dto.ReviewDTO;
import com.services.bodimalk.dto.UserDTO;

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
}
