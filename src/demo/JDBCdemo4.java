package demo;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;




public class JDBCdemo4 {
	public static void main(String args[]) throws Exception{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/bili?useUnicode=true&characterEncoding=utf-8","root","wang5161621");
			PreparedStatement ps;
			String sql;
			String[] type1={"动画","MAD·AMV","MMD·3D","短片·手书·配音","综合"};
			String[] type2={"番剧","连载动画","完结动画","资讯","官方延伸","新番时间表","番剧索引"};
			String[] type3={"国创","国产动画","国产原创相关","布袋戏","资讯","新番时间表","国产动画索引"};
			String[] type4={"音乐","原创音乐","翻唱","演奏","三次元音乐","OP/ED/OST","音乐选集"};
			String[] type5={"舞蹈","宅舞","三次元舞蹈","舞蹈教程"};
		 	String[] type6={"游戏","单机游戏","电子竞技","手机游戏","网络游戏","桌牌棋游","GMV","音游","Mugen"};
			String[] type7={"科技","趣味科普人文","野生技术协会","演讲公开课","星海","数码","机械","汽车"};
			String[] type8={"生活","搞笑","日常","美食园","动物园","手工","绘画","ASMR","运动","其他"};
			String[] type9={"鬼畜","鬼畜调教","音MAD","人力VOCALOID","教程演示"};
			String[] type10={"时尚","美妆","服饰","健身","资讯"};
			String[] type11={"娱乐","综艺","明星","Korea相关"};
			String[] type12={"广告",""};
			String[] type13={"影视","影视杂谈","影视剪辑","短片","预告·资讯","特摄"};
			String[] type14={"放映厅","纪录片","电影","电视剧"};
			String[][] type={type1,type2,type3,type4,type5,type6,type7,type8,type9,type10,type11,type12,type13,type14};
			String a="赵钱孙李周吴郑王冯陈褚卫蒋沈韩杨朱秦尤许何吕施张孔曹严"
					+ "华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤"
					+ "花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐"
					+ "于时傅皮卞齐康伍余元卜顾孟平黄和穆萧尹姚邵湛汪祁毛禹狄"
					+ "米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董梁杜阮蓝闵席季麻"
					+ "强贾路娄危江童颜郭梅盛林刁钟徐邱骆高夏蔡田樊胡凌霍虞万"
					+ "支柯昝管卢莫经房裘缪干解应宗丁宣贲邓郁单杭洪包诸左石崔"
					+ "吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄曲家封芮羿储靳汲邴糜松"
					+ "井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫宁仇栾"
					+ "暴甘钭厉戎祖武符刘景詹束龙叶幸司韶郜黎蓟薄印宿白怀蒲邰"
					+ "从鄂索咸籍赖卓蔺屠蒙池乔阴鬱胥能苍双闻莘党翟谭贡劳逄姬"
					+ "申扶堵冉宰郦雍卻璩桑桂濮牛寿通边扈燕冀郏浦尚农温别庄晏"
					+ "柴瞿阎充慕连茹习宦艾鱼容向古易慎戈廖庾终暨居衡步都耿满"
					+ "弘匡国文寇广禄阙东欧殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾"
					+ "辛阚那简饶空曾毋沙乜养鞠须丰巢关蒯相查后荆红游竺权逯盖"
					+ "益桓公万俟司马上官欧阳夏侯诸葛闻人东方赫连皇甫尉迟公羊"
					+ "澹台公冶宗政濮阳淳于单于太叔申屠公孙仲孙轩辕令狐钟离宇"
					+ "文长孙慕容鲜于闾丘司徒司空丌官司寇仉督子车颛孙端木巫马"
					+ "公西漆雕乐正壤驷公良拓跋夹谷宰父谷梁晋楚闫法汝鄢涂钦段"
					+ "干百里东郭南门呼延归海羊舌微生岳帅缑亢况郈有琴梁丘左丘"
					+ "东门西门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟";
			char[] c=a.toCharArray();
			int len=c.length;	
			String opusTitle;	//视频主题
			int titleMax;		//随机视频主题长度
			String time;			//视频时长
			String opusType;	//大分类
			String opusType2; //小分类
			String original;
			String tag;
			
			int collect;//收藏数
			int coin;  //硬币
			int click; //点击数
			int userId;	//up主Id
			int i;
			int j;
			Random r=new Random();
			for(i=1;i<=5000;i++){
				//随机主题
				titleMax=r.nextInt(10)+10;
				opusTitle="";
				for(j=0;j<titleMax;j++){
					opusTitle+=c[r.nextInt(len)];
				}
				
				//随机时长
				int t=r.nextInt(10000)+100;
				int l=t/60;
				int s=t%60;
				time=two(l)+":"+two(s);
				
				//随机类型
				int lo=r.nextInt(14);
				opusType=type[lo][0];
				int lon=type[lo].length;
				opusType2=type[lo][r.nextInt(lon-1)+1];
				
				//随机标签
				int num=r.nextInt(12);	
				tag="";
				for(int k=0;k<=num;k++){
					int changdu=r.nextInt(5)+1;
					int a1=c.length;
					for(int n=0;n<changdu;n++){
						int ra=r.nextInt(a1);
						tag+=c[ra];							
					}
					tag=tag+"|";
					
				}
				original=r.nextInt(2)+"";
				collect=r.nextInt(10000)+1;
				coin=r.nextInt(1000)+1;
				userId=r.nextInt(1000)+1;
				click=r.nextInt(100000)+10000;
				Timestamp createTime=new Timestamp(System.currentTimeMillis());
				sql="insert into opus(opus_title,opus_time,opus_img,opus_type,opus_type2,original,create_time,tag,collect,coin,click,user_id)"
					+"values('"+opusTitle+"','"+time+"','video/video"+i+".webp','"+opusType+"','"+opusType2+"','"+original+"','"+createTime+"','"+tag+"','"+collect+"','"+coin+"','"+click+"','"+userId+"')";
				ps=conn.prepareStatement(sql);
				ps.executeUpdate();
				
			}	
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
	}
	
	public static String two(int num){
		if(num<10){
			return "0"+num;
		}
		
		return num+"";
	}
}
