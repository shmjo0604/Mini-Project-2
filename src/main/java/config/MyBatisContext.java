package config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.TransactionFactory;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;

import mapper.ApplyMapper;
import mapper.ApplyStatusViewMapper;
import mapper.ClassImageMapper;
import mapper.ClassMapper;
import mapper.ClassProductMapper;
import mapper.ClassSelectMapper;
import mapper.MemberMapper;
import mapper.ReviewMapper;
import mapper.SessionMapper;


public class MyBatisContext {
	
	// static 객체 생성
	private static SqlSession sqlSession;
	
	// Controller에서 사용할 객체 반환
	public static SqlSession getSqlSession() {
		return sqlSession;
	}
	
	static {
		try {
			// DB접속용 dataSource객체 생성
			BasicDataSource dataSource = new BasicDataSource();

			// h2 테스트용 DB 접속
			
			
			//
			TransactionFactory transactionFactory = new JdbcTransactionFactory();
			Environment environment = new Environment("development", transactionFactory, dataSource);
			Configuration config = new Configuration(environment);
			
			// 매퍼 등록 -> config.add
			config.addMapper(MemberMapper.class);
			config.addMapper(ClassMapper.class);
			config.addMapper(ClassSelectMapper.class);
			config.addMapper(ClassImageMapper.class);
			config.addMapper(ReviewMapper.class);
			config.addMapper(SessionMapper.class);
			config.addMapper(ClassProductMapper.class);
			config.addMapper(ApplyMapper.class);
			config.addMapper(ApplyStatusViewMapper.class);
			
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(config);
			sqlSession = factory.openSession(true); //true이면 자동으로 commit을 수행함.
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
