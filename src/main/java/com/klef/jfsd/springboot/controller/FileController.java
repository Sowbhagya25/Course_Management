package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.FileManager;

@RestController
@RequestMapping("/api")
public class FileController 
{
	@Autowired
	FileManager FM;
	
	@PostMapping("/upload")
	public String upload(@RequestParam("myfile") MultipartFile file)
	{
		return FM.uploadFile(file);
	}
	
	@GetMapping("/status")
	public String status()
	{
		return FM.uploadStatus();
	}
	
	@GetMapping("/getfiles")
	public String getfiles()
	{
		return FM.getFiles().toString();
	}
}
