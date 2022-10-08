package com.services.bodimalk.controller;

import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.service.BoardingPlaceBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/boarding")
@CrossOrigin(origins = "*")
public class BoardigPlaceController {

    @Autowired
    BoardingPlaceBO boardingPlaceBO;

    @PostMapping("/add")
    public ResponseEntity addBoardingPlace(@Valid @RequestBody BoardingPlaceDTO boardingPlaceDTO) {
        System.out.println("\n"+boardingPlaceDTO.toString()+"\n\n");
        if (boardingPlaceBO.addBoardingPlace(boardingPlaceDTO))
            return new ResponseEntity<>("Boarding place added successfully.", HttpStatus.OK);
        return new ResponseEntity<>("Faild to add boarding place.", HttpStatus.BAD_REQUEST);
    }

    @GetMapping("/ads")
    public List<BoardingPlaceDTO> getAllBoardingPlaces(){
        return boardingPlaceBO.getAllAds();
    }
}
