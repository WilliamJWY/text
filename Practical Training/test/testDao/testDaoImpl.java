package testDao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.Test;

import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class testDaoImpl {
    @Test
    public void testGetStudent() {
    	SessionFactory  sessionFactory=new  AnnotationConfiguration().configure().buildSessionFactory();
		Session  session=sessionFactory.openSession();
		session.beginTransaction();//开启一个事物
		Student s = (Student) session.get(Student.class, 2);
		
		System.out.println("学生姓名:" + s.getSname() + " 学生的ID:" + s.getSid());
		/*for (Teacher t : s.getTeacheres()) {
			System.out.println("老师的姓名:" + t.getTname() + " 老师的ID:" + t.getTid());
		}
		session.getTransaction().commit();*/
    }
}
