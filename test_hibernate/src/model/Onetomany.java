package model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

public class Onetomany {
	private static Object emps;

	public static void main(String[] args) {
		Configuration cfg = new AnnotationConfiguration();
		SessionFactory sf = cfg.configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();

		/*
		 * emps = criteria .add(Restrictions.in("position", new String[] {
		 * "软件工程师", "测试工程师" })) .add(Restrictions.disjunction()
		 * .add(Restrictions.eq("degree", "硕士")) .add(Restrictions.eq("degree",
		 * "本科")) .add(Restrictions.eq("degree", "大专"))).list();
		 */

		Criteria cri = session.createCriteria(Student.class);
		List<Student> stu = cri
				.add(Restrictions.like("name", "王%"))
				.add(Restrictions.or(Restrictions.gt("age", 20),
						Restrictions.lt("age", 25))).list();

		for (Student t:stu) {
			System.out.println(t.getName());
			System.out.println(t.getSid());
			System.out.println(t.getAge());
			System.out.println();
		}

		/*
		 * 4、通过sql语句，使用表的字段名 List emps =
		 * criteria.add(Restrictions.sqlRestriction
		 * ("birthday > '1980-01-01' AND employee_name like '刘%'")).list(); 5、排序
		 * List emps =
		 * criteria.add(Restrictions.sqlRestriction("birthday > '1970-01-01'"
		 * )).addOrder(Order.asc("birthday"))
		 * .addOrder(Order.desc("salary")).list();
		 */

		/*
		 * Student s=(Student) session.get(Student.class, 1); Criteria cri =
		 * session.createCriteria(Student.class).add(Restrictions.gt("sai",1));
		 */

		/*
		 * Query
		 * q=session.createQuery("select s.name,s.team.sid from Student s");
		 * List <Object[]> l=(List<Object[]>)q.list(); for(int
		 * i=0;i<l.size();i++){ System.out.println(l.get(i)[0]+" "+l.get(i)[1]);
		 * }
		 */

		/*
		 * Query q=session.createQuery("select s.name from Student s"); List
		 * <Object> l=q.list(); for(int i=0;i<l.size();i++){
		 * System.out.println(l.get(i)); }
		 */

		/*
		 * Team s=(Team) session.get(Team.class, 1); Query
		 * q=session.createQuery("from student"); q.setMaxResults(4);
		 * q.setFirstResult(0); List <Student> stu=q.list(); for(int
		 * i=0;i<stu.size();i++){ System.out.println(stu.get(i).getName()); }
		 */

		/*
		 * Team s=(Team) session.get(Team.class, 2); s.setStu(null);
		 * session.delete(s);
		 */

		/*
		 * Team td=new Team(); td.setName("aaa");
		 * 
		 * Student s1=new Student(); s1.setName("s1");
		 * 
		 * Student s2=new Student(); s2.setName("s2");
		 * 
		 * Set<Student> stu2=new HashSet<Student>();
		 * 
		 * stu2.add(s1); stu2.add(s2);
		 * 
		 * 
		 * td.setStu(stu2); session.save(td); session.save(s1);
		 * session.save(s2);
		 */

		session.getTransaction().commit();
		session.close();
		sf.close();
	}
}
