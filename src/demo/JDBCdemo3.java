package demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;



public class JDBCdemo3 {
	public static void main(String args[]) throws Exception{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/bili?useUnicode=true&characterEncoding=utf-8","root","wang5161621");
			PreparedStatement ps;
			String sql;
			int i;
			Random r=new Random();
			int userId;
			int maxFloor;
			int type;
			int maxReply;
			for(i=7;i<=7;i++){
				maxFloor=50;				
				for(int j=1;j<maxFloor;j++){
					for(type=0;type<2;type++){
						maxReply=r.nextInt(30);
						if(type==0){
							userId=r.nextInt(999)+1;
							sql="insert into dicuss(user_id,nick_name,user_img,opus_id,send_type,send_floor,msg)"
									+"values('"+userId+"','昵称"+userId+"','headimg/"+userId+".webp','"+i+"','"+type+"','"+j+"','这是用户"+userId+"在作品"+i+"的"+j+"楼的评论')";
							ps=conn.prepareStatement(sql);
							ps.executeUpdate();
						}else{
							for(int k=1;k<=maxReply;k++){
								userId=r.nextInt(999)+1;
								sql="insert into dicuss(user_id,nick_name,user_img,opus_id,send_type,send_floor,msg)"
										+"values('"+userId+"','昵称"+userId+"','headimg/"+userId+".webp','"+i+"','"+type+"','"+j+"','这是用户"+userId+"在作品"+i+"的"+j+"楼中对楼主的第"+k+"条回复')";
								ps=conn.prepareStatement(sql);
								ps.executeUpdate();
							}
						}
					}
				}
			}
			//此时获取的结果还存在数据库服务器上
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
	}
}
