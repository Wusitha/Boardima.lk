package com.services.bodimalk.service;

import com.services.bodimalk.dao.BoardingPlaceDAO;
import com.services.bodimalk.dao.BoardingRequestDAO;
import com.services.bodimalk.dto.BoardingRequestDTO;
import com.services.bodimalk.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class BoardingRequestBOImpl implements BoardingRequestBO{
    @Autowired
    BoardingPlaceDAO boardingPlaceDAO;
    @Autowired
    BoardingRequestDAO boardingRequestDAO;
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

    @Override
    public List<User> getRequestBoarders(String name) {
        int boardingPlaceId=boardingPlaceDAO.findBoardingPlaceId("amdcushanibandara@gmail.com");
        List<BoardingRequestDAO.Boarder> boardersList=boardingRequestDAO.getRequestedBoarders(boardingPlaceId);


        List<User> boarders=new ArrayList<>();
        for(BoardingRequestDAO.Boarder boarder:boardersList)
        {


            java.sql.Date sqlDate= java.sql.Date.valueOf(boarder.getDob());
            boarders.add(new User(boarder.getFirstName(),boarder.getLastName(),boarder.getGender(),sqlDate,boarder.getContact(),Long.valueOf(boarder.getId())));
        }


        return boarders;
    }

    @Override
    public String acceptBoarder(int parseInt) {
        try {
            System.out.println("2");
            boardingRequestDAO.acceptBoarder(parseInt);
            System.out.println("3");

            return "Successfully Added";


        }
        catch (Exception e){
            System.out.println("4");
            return e.getMessage();
        }
    }
}
