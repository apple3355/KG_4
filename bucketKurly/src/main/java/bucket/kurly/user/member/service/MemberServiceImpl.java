package bucket.kurly.user.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.user.member.MemberDAO;
import bucket.kurly.user.member.MemberDetailVO;
import bucket.kurly.user.member.MemberTermsVO;
import bucket.kurly.user.member.MemberVO;



@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
		//회원가입
		@Override
		public void insertMember(MemberVO vo) {
			dao.insertMember(vo);
			
		}
		
		//회원 디테일
		@Override
		public void insertMemberDetail(MemberDetailVO dvo) {
			dao.insertMemberDetail(dvo);
			
		}
		
		//회원정보
		@Override
		public MemberVO selectMember(String member_id) {
			return dao.selectMember(member_id);
			
		}
		
		//회원 정보 디테일
		@Override
		public MemberDetailVO selectMemberDetail(String member_id) {
			return dao.selectMemberDetail(member_id);
		}
		
		//회원정보 수정
		@Override
		public void updateMember(MemberVO vo) {
			dao.updateMember(vo);
		}
		
		//회원 삭제
		@Override
		public void deleteMember(MemberVO vo) {
			dao.deleteMember(vo);
			
		}

		//회원 상세정보
		@Override
		public MemberVO getMember(String member_id) {
			return dao.getMember(member_id);
		}

		//로그인
		@Override
		public MemberVO login(MemberVO vo) throws Exception {
			return dao.login(vo);
		}

		//아이디 찾기
		@Override
		public MemberVO find_id(MemberVO vo) throws Exception {
			return dao.find_id(vo);
		}
		
		//비밀번호 찾기 데이터 베이스 체크
		@Override
		public MemberVO find_pwd(MemberVO vo) throws Exception {
			return dao.find_pwd(vo);
		}
		
		//비밀번호 수정
		@Override
		public void update_pwd(MemberVO vo) {
			dao.update_pwd(vo);
			
		}
		
		//이용약관동의
		@Override
		public void insertMemberTerms(MemberTermsVO tvo) {
			dao.insertMemberTerms( tvo);
		}

		//아이디 중복 체크 
		@Override
		public MemberVO idCheck(String member_id) throws Exception{
			return dao.idCheck(member_id);
		}
		
		//현재 비밀번호체크 
		@Override
		public MemberVO pwCheck(String member_pw) throws Exception {
			return dao.pwCheck(member_pw);
		}

		//이메일 중복 체크 
		@Override
		public MemberVO emailCheck(String member_email) throws Exception{
			return dao.emailCheck(member_email);
		}
		
		//전화번호 체크
		@Override
		public MemberVO phoneCheck(String member_phone) throws Exception {
			return dao.phoneCheck(member_phone);
		}

	
	
	

}

