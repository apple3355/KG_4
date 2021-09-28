package bucket.kurly.user.member.service;


import bucket.kurly.user.member.MemberDetailVO;
import bucket.kurly.user.member.MemberTermsVO;
import bucket.kurly.user.member.MemberVO;

public interface MemberService {
	// 회원가입
	public void insertMember(MemberVO vo);

	// 회원 디테일
	public void insertMemberDetail(MemberDetailVO dvo);

	// 회원정보
	public MemberVO selectMember(String member_id);

	// 회원정보 디테일
	public MemberDetailVO selectMemberDetail(String member_id);

	// 회원정보 수정
	public void updateMember(MemberVO vo);

	// 회원 삭제
	public void deleteMember(MemberVO vo);

	// 회원 상세정보
	public MemberVO getMember(String member_id);

	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;

	// 아이디 찾기
	public MemberVO find_id(MemberVO vo) throws Exception;

	/// 비밀번호 찾기 데이터 베이스 체크
	public MemberVO find_pwd(MemberVO vo) throws Exception;

	// 비밀번호 수정
	public void update_pwd(MemberVO vo);

	// 이용약관동의
	void insertMemberTerms(MemberTermsVO tvo);

	// 아이디 중복 체크
	public MemberVO idCheck(String member_id) throws Exception;

	// 현재 비밀번호체크
	public MemberVO pwCheck(String member_pw) throws Exception;

	// 이메일 중복 체크
	public MemberVO emailCheck(String member_email) throws Exception;

	// 전화번호 중복 체크
	public MemberVO phoneCheck(String member_phone) throws Exception;
}
