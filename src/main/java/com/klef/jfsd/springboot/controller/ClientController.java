package com.klef.jfsd.springboot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.FileManager;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

@Controller
public class ClientController 
{
	
	@Autowired(required=true)
	private AdminService adminService;
	
	@Autowired(required=true)
	private FacultyService facultyService;
	
	@Autowired(required=true)
	private StudentService studentService;
	
	@GetMapping("/")
	public String mainhome()
	{
		return "index";
	}
	
	@GetMapping("/facultyhome")
	public ModelAndView facultyHome()
	{
		ModelAndView mv= new ModelAndView("facultyhome");
		
		return mv;
	}
	
	@GetMapping("/login")
	public ModelAndView logindemo()
	{
		ModelAndView mv= new ModelAndView("login");
		
		return mv;
	}
	
	 @GetMapping("/facultyreg") 
	  public ModelAndView  facultyregdemo()
	  {
	    ModelAndView mv= new ModelAndView("facultyreg", "fac", new Faculty());
	    return mv;
	  }
	 @GetMapping("/feedback") 
	  public ModelAndView  feedbackdemo()
	  {
	    ModelAndView mv= new ModelAndView("feedback","fed",new Feedback());
	    //mv.setViewName("feedback");
	    return mv;
	  }
	  @PostMapping("/addfaculty")
	  public String addfacultydemo(@ModelAttribute("fac") Faculty faculty)
	  
	  {
	    facultyService.addfaculty(faculty);
	    
	    ModelAndView mv= new ModelAndView();
	    mv.setViewName("facultyreg");
	    mv.addObject("msg","Faculty Registered Successfully");
	    
	    //return mv;
	    

    return "redirect:facultylogin";
	    
	}
	  @PostMapping("/addfeedback")
	  public String addfeedback(@ModelAttribute("fed") Feedback feedback)
	  
	  {
	    facultyService.addfeedback(feedback);
	    
	    ModelAndView mv= new ModelAndView();
	    mv.setViewName("feedback");
	    mv.addObject("msg","Feedback Submitted Successfully");
	    
	    //return mv;
	    

    return "redirect:facultyhome";
	    
	}
	
	@GetMapping("/facultylogin")
	public ModelAndView facultylogindemo()
	{
		ModelAndView mv= new ModelAndView("facultylogin");
		
		return mv;
	}
	@GetMapping("/studentlogin")
	public ModelAndView studentlogindemo()
	{
		ModelAndView mv= new ModelAndView("studentlogin");
		
		return mv;
	}
	
	@GetMapping("/about")
	public ModelAndView aboutdemo()
	{
		ModelAndView mv= new ModelAndView("about");
		
		return mv;
	}
	@GetMapping("/contactus")
	public ModelAndView contactusdemo()
	{
		ModelAndView mv= new ModelAndView("contactus");
		
		return mv;
	}
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("auname", auname);
			
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	 @GetMapping("/studentreg") 
	  public ModelAndView  studentregdemo()
	  {
	    ModelAndView mv= new ModelAndView("studentreg", "stu", new Student());
	    return mv;
	  }
	  
	  @PostMapping("/addstudent")
	  public String addstudentdemo(@ModelAttribute("stu") Student student)
	  
	  {
	    studentService.addstudent(student);
	    
//	    ModelAndView mv= new ModelAndView();
//	    mv.setViewName("studentreg");
//	    mv.addObject("msg","Student Registered Successfully");
//	    
//	    return mv;
	    

	    return "redirect:studentlogin";
	    
	}
		@PostMapping("/checkstudentlogin")
		public ModelAndView checkstudentlogindemo(HttpServletRequest request)
		{
			ModelAndView mv =  new ModelAndView();
			
			String suname = request.getParameter("suname");
			String spwd = request.getParameter("spwd");
			
			Student student = studentService.checkstudentlogin(suname, spwd);
			
			if(student!=null)
			{
				
               HttpSession session = request.getSession();
				
				session.setAttribute("suname", suname);
				int id = studentService.getStudentIdByUsername(suname);
				System.out.println(id);
				session.setAttribute("stuid",id);
				mv.setViewName("studenthome");
			}
			else
			{
				mv.setViewName("studentlogin");
				mv.addObject("msg", "Login Failed");
			}
			
			
			return mv;
		}
		@PostMapping("/checkfacultylogin")
	    public ModelAndView checkfacultylogindemo(HttpServletRequest request)
	    {
	      ModelAndView mv =  new ModelAndView();
	    
	      String funame = request.getParameter("funame");
	      String fpwd = request.getParameter("fpwd");
	      
	      Faculty faculty = facultyService.checkfacultylogin(funame, fpwd);
	      
	      if(faculty!=null)
	      {
	    	  HttpSession session = request.getSession();
				
				session.setAttribute("funame", funame);
				int facid= facultyService.FacultyIdByUsername(funame);
				System.out.println(facid);
				session.setAttribute("facid", facid);
				mv.setViewName("facultyhome");
	        
	      }
	      else
	      {
	        mv.setViewName("facultylogin");
	        mv.addObject("msg", "Login Failed");
	      }
	      
	      
	      return mv;
	    }
		@GetMapping("/viewallstudents")
		public ModelAndView viewallstudentsdemo()
		{
			ModelAndView mv= new ModelAndView("viewallstudents");
			
			List<Student> studentlist=adminService.viewallstudents();
			
			mv.addObject("studentlist",studentlist);
			
			return mv;
		}
		
		@GetMapping("/viewallfaculty")
		public ModelAndView viewallfacultydemo()
		{
			ModelAndView mv= new ModelAndView("viewallfaculty");
			
			List<Faculty> facultylist=adminService.viewallfaculty();
			
			mv.addObject("facultylist",facultylist);
			return mv;
		}
		@GetMapping("/viewallfeeback")
		public ModelAndView viewallfeedbackdemo()
		{
			ModelAndView mv= new ModelAndView("viewallfeedbacks");
			
			List<Feedback> feedbacklist=adminService.viewallfeedback();
			
			mv.addObject("feedbacklist",feedbacklist);
			return mv;
		}
		
		@GetMapping("/deletefeedback")
		public String deletefeedbackdemo(@RequestParam("id") int feid)
		{
			adminService.deletefeedback(feid);
			
			return "redirect:viewallfeedbacks";
		}
		
		@GetMapping("/deletestudent")
		public String deletestudentdemo(@RequestParam("id") int sid)
		{
			adminService.deletestudent(sid);
			
			return "redirect:viewallstudents";
		}
		
		@GetMapping("/deletefaculty")
		public String deletefacultydemo(@RequestParam("id") int fid)
		{
			adminService.deletefaculty(fid);
			
			return "redirect:viewallfaculty";
		}
		
		@GetMapping("/viewstudent")
		public ModelAndView viewstudent(HttpServletRequest request)
		{
			HttpSession session = request.getSession();
			
			String suname = (String) session.getAttribute("suname");
			
			Student student =  studentService.viewstudent(suname);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewstudent");
			mv.addObject("student",student);
			
			return mv;
		}
		
		@GetMapping("/viewfaculty")
		public ModelAndView viewfaculty(HttpServletRequest request)
		{
			 HttpSession session = request.getSession();
			    
			    String funame = (String) session.getAttribute("funame");
			    
			    Faculty faculty =  facultyService.viewfaculty(funame);
			    ModelAndView mv = new ModelAndView();
			    mv.setViewName("viewfaculty");
			    mv.addObject("faculty",faculty);
			    
			    return mv;
		}
		@GetMapping("/viewstudentbyid")
		public ModelAndView viewstudentbyiddemo(@RequestParam("id") int sid)
		{
			Student student = adminService.viewstudentbyid(sid);
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("viewstudentbyid");
			mv.addObject("student",student);
			
			return mv;
		}
		@GetMapping("/viewfacultybyid")
		public ModelAndView viewfacultybyiddemo(@RequestParam("id") int fid)
		{
			Faculty faculty = adminService.viewfacultybyid(fid);
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("viewfacultybyid");
			mv.addObject("faculty",faculty);
			
			return mv;
		}
		@GetMapping("/viewfeedbackbyid")
		public ModelAndView viewfeedbackbyiddemo(@RequestParam("id") int feid)
		{
			Feedback feedback = adminService.viewfeedbackbyid(feid);
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("viewfeedbackbyid");
			mv.addObject("feedback",feedback);
			
			return mv;
		}
		@GetMapping("/schangepwd")
		public ModelAndView schangepwd(HttpServletRequest request)
		{
			HttpSession session = request.getSession();
			
			String suname = (String) session.getAttribute("suname");
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("schangepwd");
			mv.addObject("suname",suname);
			
			return mv;
		}
		
		@PostMapping("/updatespwd")
		public ModelAndView updateemppwddemo(HttpServletRequest request)
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("schangepwd");
			
			HttpSession session = request.getSession();
			
			String suname = (String) session.getAttribute("suname");
			
			String soldpwd = request.getParameter("sopwd");
			String snewpwd = request.getParameter("snpwd");
			
			int n = studentService.changestudentpassword(soldpwd, snewpwd, suname);
			
			if(n > 0)
			{
				
				mv.addObject("msg","Password Updated Successfully");
			}
			else
			{
				mv.addObject("msg","Old Password is Incorrect");
			}
			
			return mv;
		}
		
}
