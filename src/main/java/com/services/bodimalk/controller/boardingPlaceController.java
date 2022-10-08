package com.services.bodimalk.controller;

import com.services.bodimalk.dto.BoardingPlaceDTO;
import com.services.bodimalk.service.BoardingPlaceBO;
import org.aspectj.lang.annotation.DeclareWarning;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/boarding")
@CrossOrigin(origins = "*")
public class boardingPlaceController {

    private final BoardingPlaceBO boardingPlaceBO;

    public boardingPlaceController(BoardingPlaceBO boardingPlaceBO) {
        this.boardingPlaceBO = boardingPlaceBO;
    }

    @PostMapping("/add")
    public ResponseEntity addBoardingPlace(@Valid @RequestBody BoardingPlaceDTO boardingPlaceDTO) {
        System.out.println("\n"+boardingPlaceDTO.toString()+"\n\n");
        if (boardingPlaceBO.addBoardingPlace(boardingPlaceDTO))
            return new ResponseEntity<>("Boarding place added successfully.", HttpStatus.OK);
        return new ResponseEntity<>("Failed to add boarding place.", HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/update")
    public ResponseEntity updateBoardingPlace(@Valid @RequestBody BoardingPlaceDTO boardingPlaceDTO) {
        if (boardingPlaceBO.updateBoardingPlace(boardingPlaceDTO))
            return new ResponseEntity<>("Boarding place updated", HttpStatus.OK);
        return new ResponseEntity<>("Boarding place update failed", HttpStatus.BAD_REQUEST);
    }

    @GetMapping("/ads")
    public List<BoardingPlaceDTO> getAllBoardingPlaces(){
        return boardingPlaceBO.getAllAds();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteBoardingPlace(@PathVariable Long id){
        BoardingPlaceDTO boardingPlaceDTO = new BoardingPlaceDTO();
        boardingPlaceDTO.setId(id);
        if (boardingPlaceBO.deleteBoardingPlace(boardingPlaceDTO)){
            return new ResponseEntity<>("Boarding place deleted successfully.", HttpStatus.OK);
        }
        return new ResponseEntity<>("Boarding place delete failed", HttpStatus.BAD_REQUEST);
    }
}
