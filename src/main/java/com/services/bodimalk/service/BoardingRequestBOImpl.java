package com.services.bodimalk.service;

import com.services.bodimalk.dto.BoardingRequestDTO;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BoardingRequestBOImpl implements BoardingRequestBO{
    @Override
    public boolean addBoardingRequest(BoardingRequestDTO boardingRequestDTO) {
        return false;
    }

    @Override
    public boolean updateBoardingRequest(BoardingRequestDTO boardingRequestDTO) {
        return false;
    }

    @Override
    public boolean deleteBoardingRequest(BoardingRequestDTO boardingRequestDTO) {
        return false;
    }

    @Override
    public List<BoardingRequestDTO> getAllBoardingRequestsByBoardingPlace(BoardingRequestDTO boardingRequestDTO) {
        return null;
    }

    @Override
    public List<BoardingRequestDTO> getAllBoardingRequestsByBoardingPlaceAndState(BoardingRequestDTO boardingRequestDTO) {
        return null;
    }

    @Override
    public List<BoardingRequestDTO> getAllAcceptedBoardingRequestsByBoardingPlace(BoardingRequestDTO boardingRequestDTO) {
        return null;
    }
}
