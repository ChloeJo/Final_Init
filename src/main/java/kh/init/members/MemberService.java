package kh.init.members;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	public int isLoginOk(String email, String pw) {
		return dao.isLoginOk(email, pw);
	}
}
