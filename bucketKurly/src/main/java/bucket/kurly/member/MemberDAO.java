package bucket.kurly.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void insertMember(MemberVO vo) {
		System.out.println("MemberDAO - insertMember() 실행");
		sqlSessionTemplate.insert("MemberDAO.insertMember", vo);
		                         //namespace.id
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("MemberDAO - updateMember() 실행");
		sqlSessionTemplate.update("MemberDAO.updateMember", vo);
	}
	
	public void deleteMember(MemberVO vo) {
		System.out.println("MemberDAO - deleteMember() 실행");
		sqlSessionTemplate.delete("MemberDAO.deleteMember", vo);
	}
	
	public MemberVO getMember(String member_id) {
		System.out.println("MemberDAO - getUser() 실행");
		return sqlSessionTemplate.selectOne("MemberDAO.getMember", member_id);
	}
	
	public MemberVO login(MemberVO vo) throws Exception {
		return sqlSessionTemplate.selectOne("MemberDAO.login", vo);
	}
	
	public MemberVO find_id(MemberVO vo) throws Exception {
		return sqlSessionTemplate.selectOne("MemberDAO.find_id", vo);
	}
	
	public void insertMemberTerms(MemberTermsVO tvo) {
		sqlSessionTemplate.insert("MemberDAO.insertMemberTerms", tvo);
	}
	
	public MemberVO idCheck(String member_id) throws Exception{
		return sqlSessionTemplate.selectOne("MemberDAO.idCheck", member_id);
	}
	
	public MemberVO emailCheck(String member_email) throws Exception{
		return sqlSessionTemplate.selectOne("MemberDAO.emailCheck", member_email);
	}
}
