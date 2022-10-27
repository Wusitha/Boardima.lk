package com.services.bodimalk.service;

import com.services.bodimalk.dto.BoardingRequestDTO;
import com.services.bodimalk.entity.User;

import java.text.ParseException;
import java.util.List;

public interface BoardingRequestBO {
    public boolean addBoardingRequest(BoardingRequestDTO boardingRequestDTO);
    public boolean updateBoardingRequest(BoardingRequestDTO boardingRequestDTO);
    public boolean deleteBoardingRequest(BoardingRequestDTO boardingRequestDTO);
    public List<BoardingRequestDTO> getAllBoardingRequestsByBoardingPlace(BoardingRequestDTO boardingRequestDTO);
    public List<BoardingRequestDTO> getAllBoardingRequestsByBoardingPlaceAndState(BoardingRequestDTO boardingRequestDTO);
    public List<BoardingRequestDTO> getAllAcceptedBoardingRequestsByBoardingPlace(BoardingRequestDTO boardingRequestDTO);

    List<User> getRequestBoarders(String name) throws ParseException;
    String acceptBoarder(int parseInt);
}
