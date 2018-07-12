package com.aws.photoupload.controller;

import com.aws.photoupload.service.AmazonClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RestController

public class FileController {

    private AmazonClient amazonClient;
    @RequestMapping("/")
    ModelAndView index (ModelAndView modelAndView) {

        modelAndView.setViewName("index");

        return modelAndView;
    }

    @Autowired
    FileController(AmazonClient amazonClient) {
        this.amazonClient = amazonClient;
    }

    @PostMapping("/upload")
    public String uploadFile(@RequestPart(value = "file") MultipartFile file) {
        return this.amazonClient.upload(file);
    }
}
