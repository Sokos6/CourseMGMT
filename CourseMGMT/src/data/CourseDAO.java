package data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Course;

@Transactional
public class CourseDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	public void addCourse(Course course) {
		em.persist(course);
	}
	public List<Course> getAllCourses() {
		//em.persist(cours
		List<Course> courses = em.createQuery("SELECT c FROM Course c").getResultList();
		return courses;
	}
	
	public Boolean createCourse(Course course) {
		em.persist(course);
		
		return true;
	}
}
