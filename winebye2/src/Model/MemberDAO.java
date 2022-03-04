package Model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {

	private static SqlSessionFactory sqlSessionFactory;
	

	static {
		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);	
		}
		catch(Exception e){ 
			e.printStackTrace();
		}	
	}

	//=================================================================================
	
	public int join(MemberVO vo) {
		
		
		SqlSession session = sqlSessionFactory.openSession(true);
	
		
		int cnt = session.insert("joinService", vo);
		
	
		session.close();
		return cnt;
	}
	//==join==
	
	public MemberVO login(MemberVO vo) {
	
	
		SqlSession session = sqlSessionFactory.openSession();
		

		MemberVO uvo = session.selectOne("loginService", vo);
		session.close();
		
		return uvo;
	}
	//==login==
		
	
	public MemberVO idCheck(String id) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		MemberVO vo = session.selectOne("idCheck", id);
		
		session.close();
		
		return vo;
	}
	
	public int update(MemberVO vo) {
		
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int cnt = session.update("updateService", vo);
		session.close();
		
		return cnt;
	}
	
	//==id check
}
