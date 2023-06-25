package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.FeedbackRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired(required=true)
	private AdminRepository adminRepository;
	
	@Autowired(required=true)
	private FacultyRepository facultyRepository;
	
	@Autowired(required=true)
	private StudentRepository studentRepository;
	
	@Autowired(required=true)
	private FeedbackRepository feedbackRepository;

	@Override
	public Admin checkadminlogin(String auname, String apwd) 
	{
		return adminRepository.checkadminlogin(auname, apwd);
	
	}

	@Override
	public List<Faculty> viewallfaculty() 
	{
		
		return (List<Faculty>) facultyRepository.findAll();
	}

	@Override
	public void deletefaculty(int fid) {
		
		facultyRepository.deleteById(fid);
	}

	@Override
	public Faculty viewfacultybyid(int fid) {
		
		return facultyRepository.findById(fid).get();
	}

	@Override
	public List<Student> viewallstudents() {
		
		return (List<Student>) studentRepository.findAll(); 
	}

	@Override
	public void deletestudent(int sid) 
	{
		studentRepository.deleteById(sid);
		
		
	}

	@Override
	public Student viewstudentbyid(int sid) 
	{
		
		return studentRepository.findById(sid).get();
	}

	@Override
	public List<Feedback> viewallfeedback() {
		//return (List<Feedback>) FeedbackRepository.findAll();
		return null;
	}

	@Override
	public void deletefeedback(int feid) {
		feedbackRepository.deleteById(feid);
		
	}

	@Override
	public Feedback viewfeedbackbyid(int feid) {
		return feedbackRepository.findById(feid).get();
	}
	

}
