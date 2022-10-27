package com.services.bodimalk.service;

import com.services.bodimalk.dao.BoardingPlaceDAO;
import com.services.bodimalk.dao.ImageDAO;
import com.services.bodimalk.dto.ImageDTO;
import com.services.bodimalk.entity.Image;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ImageBoImpl implements ImageBO{
    private final BoardingPlaceDAO boardingPlaceDAO;
    private final ImageDAO imageDAO;

    public ImageBoImpl(BoardingPlaceDAO boardingPlaceDAO, ImageDAO imageDAO) {
        this.boardingPlaceDAO = boardingPlaceDAO;
        this.imageDAO = imageDAO;
    }

    @Override
    public boolean addImage(ImageDTO imageDTO) {
        try {
            Image image = new Image(imageDTO.getUrl(), boardingPlaceDAO.findBoardingPlaceById(imageDTO.getBoardingPlace()));
            imageDAO.save(image);
        } catch (Exception e) {
            System.out.println("Cannot save image. "+ e);
        }
        return false;
    }

    @Override
    public boolean addImages(List<ImageDTO> imageDTOS) {
        List<Image> images = new ArrayList<>();
        imageDTOS.forEach(imageDTO -> {
           try {
               Image image = new Image(imageDTO.getUrl(), boardingPlaceDAO.findBoardingPlaceById(imageDTO.getBoardingPlace()));
               images.add(image);
           } catch (Exception e) {
               System.out.println("Cannot find boarding place"+e);
           }
        });

        try {
            imageDAO.saveAll(images);
            return true;
        } catch (Exception e) {
            System.out.println("Cannot save images."+e);
        }
        return false;
    }

    @Override
    public boolean updateImage(ImageDTO imageDTO) {
        try {
            Image image = imageDAO.findById(imageDTO.getId()).get();
            image.setUrl(imageDTO.getUrl());
            imageDAO.save(image);
            return true;
        } catch (Exception e) {
            System.out.println("Image Not found." + e);
        }
        return false;
    }

    @Override
    public boolean deleteImage(ImageDTO imageDTO) {
        if (imageDAO.existsById(imageDTO.getId())) {
            try {
                imageDAO.deleteById(imageDTO.getId());
            } catch (Exception e) {
                System.out.println("Cannot delete image. "+e);
            }
        }
        return false;
    }

    @Override
    public List<ImageDTO> getAllImages() {
        return null;
    }

    @Override
    public List<ImageDTO> getAllImagesByBoardingPlace(ImageDTO imageDTO) {
        return null;
    }

    @Override
    public ImageDTO getImageDto(Image image) {
        ImageDTO imageDTO = new ImageDTO();
        //set properties
        imageDTO.setId(image.getId());
        imageDTO.setUrl(image.getUrl());
        imageDTO.setBoardingPlace(image.getBoardingPlace().getId());

        return imageDTO;
    }
}
