package test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import bean.Student;

import dao.StudentDao;

public class TestMain {
	public SqlSessionFactory getSqlSeeeionFactory(){
		SqlSessionFactory sqlSessionFactory = null;
		try {
			String resource = "mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlSessionFactory;
	}
	
	@Test
	public void test1(){
		SqlSessionFactory sqlSessionFactory = getSqlSeeeionFactory();
		SqlSession session = sqlSessionFactory.openSession();
		try {
		StudentDao dao = session.getMapper(StudentDao.class);
		Student student = dao.getStudent(140804107);
		System.out.println(student);
		} finally {
		session.close();
		}
	}
}