package com.services.bodimalk.service;

import com.services.bodimalk.dao.BoardingPlaceDAO;
import com.services.bodimalk.dao.FacilityProfileDAO;
import com.services.bodimalk.dao.ReviewDAO;
import com.services.bodimalk.dao.UserDAO;
import com.services.bodimalk.dto.*;
import com.services.bodimalk.entity.BoardingFacility;
import com.services.bodimalk.entity.BoardingPlace;
import com.services.bodimalk.entity.Review;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.util.Globals;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class BoardingPlaceBOImpl implements BoardingPlaceBO{
    private final BoardingPlaceDAO boardingPlaceDAO;
    private final UserDAO userDAO;
    private final ImageBO imageBO;
    private final ReviewDAO reviewDAO;

    @Autowired
    public BoardingPlaceBOImpl(BoardingPlaceDAO boardingPlaceDAO, PaymentBO paymentBO, BoardingRequestBO boardingRequestBO, UserDAO userDAO, ImageBO imageBO, FacilityProfileDAO facilityProfileDAO, ReviewDAO reviewDAO) {
        this.boardingPlaceDAO = boardingPlaceDAO;
        this.userDAO = userDAO;
        this.imageBO = imageBO;
        this.reviewDAO = reviewDAO;
    }

    private BoardingPlace getEntityWithPrimitives(BoardingPlaceDTO boardingPlaceDTO){
        BoardingPlace boardingPlace = new BoardingPlace();
        //set properties
        boardingPlace.setId(boardingPlaceDTO.getId());
        boardingPlace.setLatitude(boardingPlaceDTO.getLatitude());
        boardingPlace.setAltitude(boardingPlaceDTO.getAltitude());
        boardingPlace.setName(boardingPlaceDTO.getName());
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
        try{
            boardingPlace.setOwner(userDAO.findUserById(boardingPlaceDTO.getOwnerId()));
        } catch (Exception e){
            System.out.println("Boarding owner not found.");
        }


        return boardingPlace;
    }

    private BoardingPlaceDTO getDtoWithPrimitives(BoardingPlace boardingPlace) {
        BoardingPlaceDTO boardingPlaceDTO = new BoardingPlaceDTO();
        //set properties
        boardingPlaceDTO.setId(boardingPlace.getId());
        boardingPlaceDTO.setLatitude(boardingPlace.getLatitude());
        boardingPlaceDTO.setAltitude(boardingPlace.getAltitude());
        boardingPlaceDTO.setName(boardingPlace.getName());
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

        //set facilities
        List<BoardingPlaceFacilityDTO> facilityDTOS = new ArrayList<>();
        boardingPlace.getFacilityProfile().forEach(facility ->{
            BoardingFacility boardingFacility = facility.getBoardingFacility();
            BoardingPlaceFacilityDTO facilityDTO = new BoardingPlaceFacilityDTO(boardingPlaceDTO.getId(), boardingFacility.getId(), boardingFacility.getFacility());
            facilityDTOS.add(facilityDTO);
        });
        boardingPlaceDTO.setFacilityDTOS(facilityDTOS);


        //set reviews
        List<ReviewDTO> reviewDTOS = new ArrayList<>();
        boardingPlace.getReviews().forEach(review -> {
            ReviewDTO reviewDTO = new ReviewDTO();
            reviewDTO.setId(review.getId());
            reviewDTO.setState(review.getState());
            reviewDTO.setDate(review.getDate());
            reviewDTO.setDescription(review.getDescription());
            reviewDTO.setRate(review.getRate());
            reviewDTO.setBoarder(review.getBoarder().getId());
            reviewDTO.setBoardingPlace(review.getBoardingPlace().getId());

            if (review.getExaminer() != null){
                reviewDTO.setExaminer(review.getExaminer().getId());
            }

            reviewDTOS.add(reviewDTO);

        });
        boardingPlaceDTO.setReviewDTOS(reviewDTOS);
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
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);
        return boardingPlace.getBeds() > 0;
    }

    /*
    * TODO
    *  1. Define the payment procedure (pay before approve [refund if disprove]  / pay after approve)
    */
    @Override
    @Transactional
    public boolean addBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //set boarding place entity
        BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);

        //set properties
        //boardingPlace.setState(Globals.STATE_PENDING); // TODO: set state according to the implementation method chosen above
        boardingPlace.setDate(getDateToday());
        boardingPlace.setRate(Globals.DEFAULT_RATE);
        boardingPlace.setState(Globals.BOARDING_STATE_PENDING);

        if (boardingPlace.getOwner() != null){

            //validate duplicate entries
            if (!boardingPlaceDAO.findAllByLatitudeAndAltitudeAndOwnerAndName(
                    boardingPlace.getLatitude(),
                    boardingPlace.getAltitude(),
                    boardingPlace.getOwner(),
                    boardingPlace.getName()).isEmpty()) return false;

            //save boarding place
            try {
                boardingPlaceDAO.save(boardingPlace);
                BoardingPlace savedBoardingPlace = boardingPlaceDAO.findByLatitudeAndAltitudeAndOwnerAndName(boardingPlace.getLatitude(), boardingPlace.getAltitude(), boardingPlace.getOwner(), boardingPlace.getName());

                //set boarding id in image DTOs
                boardingPlaceDTO.getImageDTOS().forEach(imageDTO -> {
                    imageDTO.setBoardingPlace(savedBoardingPlace.getId());
                });

                imageBO.addImages(boardingPlaceDTO.getImageDTOS());
                return true;
            } catch (Exception e) {
                System.out.println("Cannot save boarding place. "+e);
            }
        }

        return false;

    }

    /*
    * TODO: make boarder list to validate boarder before add review
    *   1. boarder must be in the boarder list to review
    *   2. state of the boarder in the boarder list must be active
    */
    @Override
    public BoardingPlaceDTO addReview(ReviewDTO reviewDTO) {

        if (userDAO.existsById(reviewDTO.getBoarder()) && boardingPlaceDAO.existsById(reviewDTO.getBoardingPlace())){

            User boarder = userDAO.findUserById(reviewDTO.getBoarder());
            BoardingPlace boardingPlace = boardingPlaceDAO.findBoardingPlaceById(reviewDTO.getBoardingPlace());

            Review review = new Review();
            review.setState(Globals.REVIEW_NORMAL);
            review.setDate(getDateToday());
            review.setDescription(reviewDTO.getDescription());
            review.setRate(reviewDTO.getRate());
            review.setBoarder(boarder);
            review.setBoardingPlace(boardingPlace);

            if (reviewDAO.existsByBoarderAndBoardingPlace(boarder, boardingPlace) && reviewDTO.getId() != null) {
                review.setId(reviewDAO.findByBoarderAndBoardingPlace(boarder, boardingPlace).getId());
            }

            try {
                reviewDAO.save(review);

                //calculate rate and update
                BoardingPlaceDTO boardingPlaceDTO = new BoardingPlaceDTO();
                boardingPlaceDTO.setId(reviewDTO.getBoardingPlace());

                List<ReviewDTO> reviewDTOS = findAllReviewsByBoardingPlace(boardingPlaceDTO);

                if (!reviewDTOS.isEmpty()) {
                    double rate = 0;

                    for (ReviewDTO reviewItem:reviewDTOS) {
                        rate += reviewItem.getRate();
                    }

                    rate /= reviewDTOS.size();

                    boardingPlace.setRate(rate);

                    updateBoardingPlace(getBoardingPlaceDto(boardingPlace));
                }
                return getBoardingPlaceDto(boardingPlace);
            } catch (Exception e) {
                System.out.println("Cannot add review. "+ e);
            }
        }
        return null;
    }

    @Override
    public List<ReviewDTO> findAllReviewsByBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        List<ReviewDTO> reviewDTOS = new ArrayList<>();
        if (boardingPlaceDAO.existsById(boardingPlaceDTO.getId())){
            boardingPlaceDAO.findBoardingPlaceById(boardingPlaceDTO.getId()).getReviews().forEach(review -> {
                ReviewDTO reviewDTO = new ReviewDTO();
                reviewDTO.setId(review.getId());
                reviewDTO.setState(review.getState());
                reviewDTO.setDate(review.getDate());
                reviewDTO.setDescription(review.getDescription());
                reviewDTO.setBoarder(review.getBoarder().getId());
                reviewDTO.setBoardingPlace(review.getBoardingPlace().getId());
                reviewDTO.setExaminer(review.getExaminer().getId());

                reviewDTOS.add(reviewDTO);
            });
            return reviewDTOS;
        }
        return null;
    }

    @Override
    public BoardingPlaceDTO deleteReview(ReviewDTO reviewDTO) {
        return null;
    }

    @Override
    public boolean updateBoardingPlace(BoardingPlaceDTO boardingPlaceDTO) {
        //check existence of boarding place
        if (boardingPlaceDAO.existsById(boardingPlaceDTO.getId())){
            //set entity
            BoardingPlace boardingPlace = getEntityWithPrimitives(boardingPlaceDTO);

            //check rate
            if(boardingPlaceDTO.getRate() <= 5 && boardingPlaceDTO.getRate() >= 0){
                //save boarding place
                try {
                    boardingPlaceDAO.save(boardingPlace);
                    return true;
                }catch (Exception e){
                    System.out.println("Cannot update boarding place"+e);
                    return false;
                }
            } else {
                System.out.println("Invalid rate value.");
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
            System.out.println("Cannot delete boarding place. "+e);
            return false;
        }
    }

    @Override
    public BoardingPlaceDTO getBoardingPlaceById(BoardingPlaceDTO boardingPlaceDTO) {
        if (boardingPlaceDAO.existsById(boardingPlaceDTO.getId())){
            return getBoardingPlaceDto(boardingPlaceDAO.findBoardingPlaceById(boardingPlaceDTO.getId()));
        }
        return null;
    }

    @Override
    public List<BoardingPlaceDTO> getAllBoardingPlaces() {
        List<BoardingPlace> boardingPlaces = boardingPlaceDAO.findAll();
        return getBoardingPlaceDTOs(boardingPlaces);
    }

    @Override
    public List<BoardingPlaceDTO> getAllAds() {
        List<BoardingPlace> boardingPlaces = boardingPlaceDAO.findAllByState(Globals.BOARDING_STATE_ACTIVE);
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
