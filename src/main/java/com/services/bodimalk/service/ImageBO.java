package com.services.bodimalk.service;

import com.services.bodimalk.dto.ImageDTO;
import com.services.bodimalk.entity.Image;

import java.util.List;

public interface ImageBO {
    public boolean addImage(ImageDTO imageDTO);
    public boolean addImages(List<ImageDTO> imageDTOS);
    public boolean updateImage(ImageDTO imageDTO);
    public boolean deleteImage(ImageDTO imageDTO);
    public List<ImageDTO> getAllImages();
    public List<ImageDTO> getAllImagesByBoardingPlace(ImageDTO imageDTO);
    public ImageDTO getImageDto(Image image);
}
