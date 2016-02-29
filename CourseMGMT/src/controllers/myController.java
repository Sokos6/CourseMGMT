package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.CourseDAO;
import entities.Course;

@Controller
public class myController {

	@Autowired
	private CourseDAO courseDAO;
	
	@ResponseBody
	@RequestMapping(value="getCourses")
	public List<Course> getAllCourses() {
		System.out.println(courseDAO.getAllCourses().size());
		return courseDAO.getAllCourses();
	}
	@ResponseBody
	@RequestMapping(value="course", method = RequestMethod.PUT)
	public Boolean createCourse(@RequestBody Course course) {
		System.out.println(course);
		course.setTeacherId(1);
		courseDAO.createCourse(course);
		return true;
	}
	
	@RequestMapping(value="addCourse", method=RequestMethod.POST)
	public String addCourse (@RequestParam("name") String n, @RequestParam("credits") int c) {
		System.out.println("here");
		Course course = new Course(n, c);
		course.setTeacherId(1);
		courseDAO.addCourse(course);
	    
	    return "../index.jsp";
	}
	
	//test connection
	@ResponseBody
	@RequestMapping(value="ping")
	public String ping() {
		return "pong";
	}
}