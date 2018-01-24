package demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;
import java.util.Random;

import com.util.NoteUtil;



public class JDBCdemo2 {
	public static void main(String args[]) throws Exception{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/bili?useUnicode=true&characterEncoding=utf-8","root","wang5161621");
			PreparedStatement ps;
			String sql;
			int i;
			String pw=NoteUtil.md5("12345678");
			String birth="1995-01-01";
			Random r=new Random();
			for(i=1001;i<=1001;i++){
			sql="insert into user(user_id,user_name,nick_name,pass_word,sex,birth,user_img,email,tel) "
					+"values('"+i+"','用户"+i+"','ss"+i+"','"+pw+"','男','"+birth+"','headimg/"+i+".webp','1234567"+i+"@qq.com','123454231"+i+"')";
			ps=conn.prepareStatement(sql);
			ps.executeUpdate();
			}
			//此时获取的结果还存在数据库服务器上
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
	}
}
