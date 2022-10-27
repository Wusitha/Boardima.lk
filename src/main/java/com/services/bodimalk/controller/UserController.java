package com.services.bodimalk.controller;

import com.services.bodimalk.dto.AdvertisementDTO;
import com.services.bodimalk.dto.ComplaintDTO;
import com.services.bodimalk.dto.PlaceDTO;
import com.services.bodimalk.dto.UserDTO;
import com.services.bodimalk.entity.User;
import com.services.bodimalk.service.BoardingPlaceBO;
import com.services.bodimalk.service.BoardingRequestBO;
import com.services.bodimalk.service.ReviewBO;
import com.services.bodimalk.service.UserBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.ParseException;
import java.util.List;

import static java.lang.Integer.parseInt;


@RestController
//@RequestMapping(path = "/user")
@CrossOrigin(origins = "*")
public class UserController {

    private final UserBO userBO;
    @Autowired
    public UserController(UserBO userBO) {
        this.userBO = userBO;
    }

    @Autowired
    ReviewBO reviewBO;
    @Autowired
    BoardingPlaceBO boardingPlaceBO;
    @Autowired
    BoardingRequestBO boardingRequestBO;

    @GetMapping("/type/{type}")
    public List<UserDTO> getAllUsersByType(@PathVariable String type){
        return userBO.getAllUsersByType(type);
    }

    @GetMapping("/get")
    public List<UserDTO> getAllUsers() {
        return userBO.getAllUsers();
    }

    @GetMapping("/get/{id}")
    public UserDTO getUserById(@PathVariable Long id){
        UserDTO userDTO = new UserDTO();
        userDTO.setId(id);
        return userBO.getUserById(userDTO);
    }

    @PostMapping("/add")
    public ResponseEntity addUser(@Valid @RequestBody UserDTO userDTO){

        if (userBO.addUser(userDTO)){
            return new ResponseEntity<>("User added", HttpStatus.OK);
        }

        return new ResponseEntity<>("User is not added", HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/update")
    public ResponseEntity updateUser(@Valid @RequestBody UserDTO userDTO){
        System.out.println(userDTO.toString());
        if (userBO.updateUser(userDTO)){
            return new ResponseEntity<>("User updated", HttpStatus.OK);
        }

        return new ResponseEntity<>("User update failed", HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/delete")
    public ResponseEntity deleteUser(@Valid @RequestBody UserDTO userDTO){
        if (userBO.deleteUser(userDTO)){
            return new ResponseEntity<>("User deleted.", HttpStatus.OK);
        }
        return new ResponseEntity<>("User delete failed", HttpStatus.BAD_REQUEST);
    }

    @GetMapping("/admin/allUsers")
    public List<User> getAllUserList()
    {
        return userBO.getAllUsersList();

    }

    @GetMapping("/admin/boarders")
    public List<User> getAllBoarderList()
    {
        return userBO.getBoardersList();

    }

    @PostMapping("/owner/addPlace")
    public String addBoardingPlace(@RequestBody PlaceDTO placeDTO) throws ParseException {
        return boardingPlaceBO.addNewBoardingPlace(placeDTO);
    }

    @GetMapping("/owner/boardersList")
    public List<User> getAllBoarderRequestList() throws ParseException {
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        return boardingRequestBO.getRequestBoarders(authentication.getName());

    }

    @GetMapping("/admin/boardingOwners")
    public List<User> getAllBoardingOwnerList()
    {
        return userBO.getBoardingOwnerList();

    }

    @GetMapping("/admin/allReviews")
    public List<ComplaintDTO> getAllReviewList()
    {

        return reviewBO.getAllReviewsList();


    }

    @GetMapping("/admin/allAdvertisements")
    public List<AdvertisementDTO> getAllAdvertisements()
    {

        return boardingPlaceBO.getAllAdvertisements();


    }

    @GetMapping("/admin/getSpecificAdvertisement")
    public AdvertisementDTO  getSpecificAdvertisement(@RequestParam int id)
    {

        return boardingPlaceBO.getAdvertisement(id);


    }



    @GetMapping("/owner/getReviews")
    public List<ComplaintDTO> getReviews()
    {

//        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        System.out.println("1");
        return reviewBO.getOwnerReviews("amdcushanibandara@gmail.com");

    }
    @PostMapping("/admin/acceptAdvertisement")
    public  String accpetAdvertisement(@RequestBody String id)
    {
        return boardingPlaceBO.acceptBoardingPlace(parseInt(id));

    }

    @PostMapping("/admin/completeReview")
    public  String completeReview(@RequestBody String id)
    {
        return reviewBO.completeReview(parseInt(id));

    }

    @PostMapping("/owner/acceptBoarder")
    public  String acceptBoarder(@RequestBody String id)
    {
        System.out.println("1");
        return boardingRequestBO.acceptBoarder(parseInt(id));


    }

    @PostMapping("/signout")
    public  String logout()
    {
        SecurityContextHolder.clearContext();
        return "logout";


    }




}
