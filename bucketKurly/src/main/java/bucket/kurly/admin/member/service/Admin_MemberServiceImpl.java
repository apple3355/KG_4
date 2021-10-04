package bucket.kurly.admin.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bucket.kurly.admin.member.Admin_MemberDAO;
import bucket.kurly.admin.member.Admin_MemberVO;
import bucket.kurly.admin.member.Admin_Member_DetailsVO;
import bucket.kurly.admin.member.Admin_Member_MembershipVO;

@Service
public class Admin_MemberServiceImpl implements Admin_MemberService{
	
	@Autowired
	private Admin_MemberDAO dao;

	@Override
	public List<Admin_MemberVO> selectMember() {
		return dao.selectMember();
	}

	@Override
	public Admin_Member_DetailsVO selectMember_no(String member_id) {
		return dao.selectMember_no(member_id);
	}

	@Override
	public void updateMember_state(Admin_MemberVO vo) {
		dao.updateMember_state(vo);
	}

	@Override
	public List<Admin_Member_MembershipVO> selectMember_membership() {
		return dao.selectMember_membership();
	}

	@Override
	public void insertMember_membership(Admin_Member_MembershipVO vo) {
		dao.insertMember_membership(vo);
	}

	@Override
	public void updateMember_membership(Admin_Member_MembershipVO vo) {
		dao.updateMember_membership(vo);
	}

	@Override
	public void deleteMember_membership(int member_membership_no) {
		dao.deleteMember_membership(member_membership_no);
	}

	@Override
	public int selectMember_num() {
		return dao.selectMember_num();
	}
	
}


