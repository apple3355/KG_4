package bucket.kurly.admin.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_MemberDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//회원 목록 조회
	public List<Admin_MemberVO> selectMember() {
		System.out.println("Admin_MemberDAO - selectMember() 실행");
		return sqlSessionTemplate.selectList("MemberDAO.admin_selectMember");
	}
	
	//회원 상세 조회
	public Admin_Member_DetailsVO selectMember_no(String member_id) {
		System.out.println("Admin_MemberDAO - selectMember_no() 실행");
		return sqlSessionTemplate.selectOne("MemberDAO.admin_selectMember_no", member_id);
	}
	
	//회원 계정 상태 수정
	public void updateMember_state(Admin_MemberVO vo) {
		System.out.println("Admin_MemberDAO - updateMember_state 실행");
		sqlSessionTemplate.update("MemberDAO.admin_updateMember_state", vo);
	}

	//등급 목록 조회
	public List<Admin_Member_MembershipVO> selectMember_membership() {
		System.out.println("Admin_MemberDAO - selectMember_membership() 실행");
		return sqlSessionTemplate.selectList("MemberDAO.admin_selectMember_membership");
	}

	//등급 추가
	public void insertMember_membership(Admin_Member_MembershipVO vo) {
		System.out.println("Admin_MemberDAO - insertMember_membership 실행");
		sqlSessionTemplate.insert("MemberDAO.admin_insertMember_membership", vo);
	}
	
	//등급 수정
	public void updateMember_membership(Admin_Member_MembershipVO vo) {
		System.out.println("Admin_MemberDAO - updateMember_membership 실행");
		sqlSessionTemplate.update("MemberDAO.admin_updateMember_membership", vo);
	}
	
	//등급 삭제
	public void deleteMember_membership(int member_membership_no) {
		System.out.println("Admin_MemberDAO - deleteMember_membership 실행");
		sqlSessionTemplate.delete("MemberDAO.admin_deleteMember_membership", member_membership_no);
	}
	
	//총 회원 수 
	public int selectMember_num() {
		System.out.println("Admin_MemberDAO - selectMember_num() 실행");
		return sqlSessionTemplate.selectOne("MemberDAO.admin_selectMember_num");
	}

	
	
}

