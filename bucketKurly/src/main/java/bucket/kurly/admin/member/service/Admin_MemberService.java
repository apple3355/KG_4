package bucket.kurly.admin.member.service;

import java.util.List;

import bucket.kurly.admin.member.Admin_MemberVO;
import bucket.kurly.admin.member.Admin_Member_DetailsVO;
import bucket.kurly.admin.member.Admin_Member_MembershipVO;


public interface Admin_MemberService {
	
	//회원 목록 조회
	List<Admin_MemberVO> selectMember();
	
	//회원 상세보기
	Admin_Member_DetailsVO selectMember_no(String member_id);
	
	//회원 상태 변경
	void updateMember_state(Admin_MemberVO vo);
	
	//멤버쉽 목록 조회
	List<Admin_Member_MembershipVO> selectMember_membership();
	
	//멤버쉽 추가
	void insertMember_membership(Admin_Member_MembershipVO vo);
	
	//멤버쉽 수정
	void updateMember_membership(Admin_Member_MembershipVO vo);
	
	//멤버쉽 삭제
	void deleteMember_membership(int member_membership_no);
	
	//총 회원 수 
	int selectMember_num();

}



