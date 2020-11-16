package testBoard;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private String user = "system", pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<BoardDTO> list(int start, int end){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
//		String sql = "select * from paging order by num desc";
		String sql = "select b.* from (select rownum rn, a.* from (select * from paging order by num desc)a )b where rn between ? and ?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				String title = rs.getString("title");
				String pdate = rs.getString("pdate");
				int num = rs.getInt("num");
				int count = rs.getInt("count");
				
				dto.setTitle(title);
				dto.setNum(num);
				dto.setCount(count);
				dto.setPdate(pdate);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void insert(BoardDTO dto) {
		String sql = "insert into paging(num, title, pdate, count) values (test_num.nextval, ? , sysdate, 0)" ;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.executeUpdate();
		
		}catch(Exception e) {
			
		}
	}
	
	public void count(String num) {
		String sql = "update paging set count = count+ 1 where num = ?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, num);
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int gettotalPage() {
		String sql = "select count(*) from paging";
		int totalPage = 0;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				totalPage = rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return totalPage;
	}
}
