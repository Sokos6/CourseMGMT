package entities;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;



public class testclass {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("CourseJPA");
		EntityManager em = emf.createEntityManager();
//		TypedQuery<Course> tq = em.createNamedQuery("Course.findALL", Course.class);
//		List<Course> courses = tq.getResultList();
		Course course = new Course("Intro to REST", 3);
		em.getTransaction().begin();
		em.persist(course);
		em.getTransaction().commit();
		System.out.println(course);
		System.out.println("created");
	}
}
