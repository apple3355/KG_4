package bucket.kurly.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.member.MemberDAO;
import bucket.kurly.member.MemberTermsVO;
import bucket.kurly.member.MemberVO;



@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);
		
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
	
	//이용약관동의
	@Override
	public void insertMemberTerms(MemberTermsVO tvo) {
		dao.insertMemberTerms( tvo);
	}

	@Override
	public MemberVO idCheck(String member_id) throws Exception{
		return dao.idCheck(member_id);
	}

	@Override
	public MemberVO emailCheck(String member_email) throws Exception{
		return dao.emailCheck(member_email);
	}

	@Override
	public int telCheck(String member_tel) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	

}

