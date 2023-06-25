package com.klef.jfsd.springboot.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

@Service
public class FacultyServiceImpl implements FacultyService 
{
	@Autowired
	
	private FacultyRepository facultyRepository;
	@Autowired
	private FeedbackRepository feedbackRepository;



	@Override
	public Faculty viewfaculty(String funame) 
	{
		
		
		return facultyRepository.viewfaculty(funame);
	}

	@Override
	public int changefacultypassword(String oldfpwd, String newfpwd, String funame)
	{
		return facultyRepository.updatefacultypassword(newfpwd, oldfpwd, funame);
	}

	@Override
	public Faculty addfaculty(Faculty faculty) 
	{
		
		
		return facultyRepository.save(faculty);
	}

	@Override
	public Faculty checkfacultylogin(String funame,String fpwd) 
	{
		
		return facultyRepository.checkfacultylogin(funame, fpwd);
	}

	@Override
	public Feedback addfeedback(Feedback feedback) {
		return feedbackRepository.save(feedback);
	}

	@Override
	public int FacultyIdByUsername(String funame) {
		  return facultyRepository.FacultyIdByUsername(funame);
	}

	


}
