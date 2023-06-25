package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService 
{
	public Admin checkadminlogin(String auname,String apwd);
	public List<Faculty> viewallfaculty();
	public void deletefaculty(int fid);
	public Faculty viewfacultybyid(int fid);
	public List<Student> viewallstudents();
	public void deletestudent(int sid);
	public Student viewstudentbyid(int sid);
	public List<Feedback> viewallfeedback();
	public void deletefeedback(int feid);
	public Feedback viewfeedbackbyid(int feid);

}
