package com.services.bodimalk.service;

import com.services.bodimalk.dto.ImageDTO;
import com.services.bodimalk.entity.Image;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ImageBoImpl implements ImageBO{
    @Override
    public boolean addImage(ImageDTO imageDTO) {
        return false;
    }

    @Override
    public boolean updateImage(ImageDTO imageDTO) {
        return false;
    }

    @Override
    public boolean deleteImage(ImageDTO imageDTO) {
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
