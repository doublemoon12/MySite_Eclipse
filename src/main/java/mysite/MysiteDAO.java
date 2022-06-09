package mysite;

import java.math.BigInteger;
import java.security.MessageDigest;

public class MysiteDAO extends DBConnPool{

	public MysiteDAO() {
		super();
	}
	
	@Override
	public void close() {
		super.close();
	}
	
	public void signUpMember(MysiteDTO Member, byte salt) {
		
		try {
			
			String passwd = Member.getPasswd();
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(passwd.getBytes());
			String epasswd 	= String.format("%064x", new BigInteger(1, md.digest()));
			
			String sql = "insert into mysite values(?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, Member.getId());
			psmt.setString(2, epasswd);
			psmt.setString(3, Member.getName());
			psmt.setString(4, Member.getEmail());
			psmt.setString(5, Member.getAddress());
			
			psmt.executeUpdate();
			
			System.out.println("DB입력 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		
	}
	
	
}
