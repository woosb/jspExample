package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private String user = "system", pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> memberList() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		
		try {
			String sql = "select * from member_ex";
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				MemberDTO dto = new MemberDTO();
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String addr = rs.getString("addr");
				String tel = rs.getString("tel");
				dto.setId(id);
				dto.setPwd(pwd);
				dto.setName(name);
				dto.setAddr(addr);
				dto.setTel(tel);
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int loginChk(MemberDTO member) {
		MemberDTO dto = new MemberDTO();
		try {
			String sql = "select * from member_ex where id = ?";
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getId());
			rs = ps.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				if( pwd.equals(member.getPwd()) && id.equals(member.getId()) ){
					//비밀번호 ok
					return 1;
				}else {
					//비밀번호 x
					return 2;
				}
			}else {
				//아이디가 존재하지 않습니다.
				return -1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		//db 에러
		return 0;
	}
}
