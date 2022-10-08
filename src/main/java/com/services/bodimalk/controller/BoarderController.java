package com.services.bodimalk.controller;

import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.service.BoardingPlaceBO;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/boarder")
@CrossOrigin(origins = "*")
public class BoarderController {
    //inject services
    private final BoardingPlaceBO boardingPlaceBO;

    public BoarderController(BoardingPlaceBO boardingPlaceBO) {
        this.boardingPlaceBO = boardingPlaceBO;
    }

    /*
    * loadBoardingPlaceAds function loads all the available boarding place ads.
    */
    @GetMapping("/ads")
    public List<BoardingPlaceDTO> loadBoardingPlaceAds(){
        return boardingPlaceBO.getAllAds();
    }
}
