package bucket.kurly.user.member.service;

import bucket.kurly.user.member.MemberTermsVO;
import bucket.kurly.user.member.MemberVO;

public interface MemberService {
	//회원가입
	public void insertMember(MemberVO vo);
	//회원정보 수정
	public void updateMember(MemberVO vo);
	//회원 삭제
	public void deleteMember(MemberVO vo);
	//회원 상세정보
	public MemberVO getMember(String member_id);
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	//아이디 찾기
	public MemberVO find_id(MemberVO vo) throws Exception;
	//이용약관동의
	void insertMemberTerms(MemberTermsVO tvo);
	//아이디 중복 체크 
	public MemberVO idCheck(String member_id)throws Exception;
	//이메일 중복 체크 
	public MemberVO emailCheck(String member_email) throws Exception;
	//전화번호 중복 체크 
	int telCheck(String member_tel);
}
