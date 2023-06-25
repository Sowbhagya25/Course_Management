package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;

public interface FacultyService 
{
	public Faculty addfaculty(Faculty faculty);
	public Feedback addfeedback(Feedback feedback);
	public Faculty checkfacultylogin(String funame,String fpwd);
	public Faculty viewfaculty(String funame);
	public int changefacultypassword(String oldfpwd,String newfpwd,String funame);
	public int FacultyIdByUsername(String funame);

}
