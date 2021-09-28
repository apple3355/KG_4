package bucket.kurly.user.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//회원등록
		public void insertMember(MemberVO vo) {
			System.out.println("MemberDAO - insertMember() 실행");
			sqlSessionTemplate.insert("MemberDAO.insertMember", vo);
			                         //namespace.id
		}
		
		//회원상세 등록
		public void insertMemberDetail(MemberDetailVO dvo) {
			System.out.println("MemberDAO - insertMemberDetail() 실행");
			sqlSessionTemplate.insert("MemberDAO.insertMemberDetail", dvo);
			                         //namespace.id
		}
		
		//회원 목록
		public MemberVO selectMember(String member_id) {
			System.out.println("MemberDAO - selectMember() 실행");
			return sqlSessionTemplate.selectOne("MemberDAO.selectMember", member_id);
			                         //namespace.id
		}
		
		//회원 목록
		public MemberDetailVO selectMemberDetail(String member_id) {
			System.out.println("MemberDAO - selectMemberDetail() 실행");
			return sqlSessionTemplate.selectOne("MemberDAO.selectMemberDetail", member_id);
				                         //namespace.id
		}
		
		//회원 수정
		public void updateMember(MemberVO vo) {
			System.out.println("MemberDAO - updateMember() 실행");
			sqlSessionTemplate.update("MemberDAO.updateMember", vo);
		}
		
		//회원 삭제
		public void deleteMember(MemberVO vo) {
			System.out.println("MemberDAO - deleteMember() 실행");
			sqlSessionTemplate.delete("MemberDAO.deleteMember", vo);
		}
		
		//회원 정보
		public MemberVO getMember(String member_id) {
			System.out.println("MemberDAO - getUser() 실행");
			return sqlSessionTemplate.selectOne("MemberDAO.getMember", member_id);
		}
		
		//회원 로그인
		public MemberVO login(MemberVO vo) throws Exception {
			return sqlSessionTemplate.selectOne("MemberDAO.login", vo);
		}
		
		
		//회원 아이디찾기
		public MemberVO find_id(MemberVO vo) throws Exception {
			return sqlSessionTemplate.selectOne("MemberDAO.find_id", vo);
		}
		
		//회원 비밀번호찾기
		public MemberVO find_pwd(MemberVO vo) throws Exception {
			return sqlSessionTemplate.selectOne("MemberDAO.find_pwd", vo);
		}
		
		//비밀번호 수정
		public void update_pwd(MemberVO vo) {
			System.out.println("MemberDAO - update_pwd() 실행");
			sqlSessionTemplate.update("MemberDAO.update_pwd", vo);
		}
		
		//이용약관 등록
		public void insertMemberTerms(MemberTermsVO tvo) {
			sqlSessionTemplate.insert("MemberDAO.insertMemberTerms", tvo);
		}
		
		//아이디 중복체크
		public MemberVO idCheck(String member_id) throws Exception{
			return sqlSessionTemplate.selectOne("MemberDAO.idCheck", member_id);
		}
		
		//비밀번호 중복체크
		public MemberVO pwCheck(String member_pw) throws Exception{
			return sqlSessionTemplate.selectOne("MemberDAO.pwCheck", member_pw);
		}
		
		//이메일 중복체크
		public MemberVO emailCheck(String member_email) throws Exception{
			return sqlSessionTemplate.selectOne("MemberDAO.emailCheck", member_email);
		}
		
		//전화번호 중복체크
		public MemberVO phoneCheck(String member_phone) throws Exception{
			return sqlSessionTemplate.selectOne("MemberDAO.phoneCheck", member_phone);
		}
}
