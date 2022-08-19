package com.services.bodimalk.service;

import com.services.bodimalk.dto.ImageDTO;

import java.util.List;

public interface ImageBO {
    public boolean addImage(ImageDTO imageDTO);
    public boolean updateImage(ImageDTO imageDTO);
    public boolean deleteImage(ImageDTO imageDTO);
    public List<ImageDTO> getAllImages();
    public List<ImageDTO> getAllImagesByBoardingPlace(ImageDTO imageDTO);
}
