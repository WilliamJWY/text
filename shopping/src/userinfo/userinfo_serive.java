package userinfo;

/*
 * 
 * 
 * 
 * 用户功能界面
 * */

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import connn.DB;

public class userinfo_serive {
	private DB db = new DB();
	private userinfo user;

	public userinfo_serive() {
	}

	public userinfo_serive(userinfo user) {
		this.user = user;

	}

	public userinfo getUser() {
		return user;
	}

	public void setUser(userinfo user) {
		this.user = user;
	}

	public int mm(String newpassword,String username){
		String sql = "update userinfo set password = '"+newpassword+"' where username = '"+username+"';";
		System.out.println(sql);
		int r = db.executeUpdate(sql);
		db.closeDB();
		return r;
	}
	public boolean denlu() {
		boolean b = false;
		try {
			String sql = "select username,password from userinfo where username='"+ user.getUsername()+ "' and password='"+ user.getPassword() + "';";
			ResultSet rs = db.executeQuery(sql);
			b = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeDB();
		}
		return b;
	}

	public userinfo servelet(String username) {
		userinfo user = new userinfo();
		try {
			String sql = "select *from userinfo where username='"
					+ username + "';";
			ResultSet rs = db.executeQuery(sql);
			if (rs.next()) {
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setRecipients(rs.getString("recipients"));
				user.setType(rs.getString("type"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeDB();
		}
		return user;
	}

	public boolean isExtend() {
		boolean b = false;
		try {
			String sql = "select username,password from userinfo where username='"+ user.getUsername() + "';";
			ResultSet rs = db.executeQuery(sql);
			b = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
		}
		return b;
	}

	public boolean isExtend(String username) {
		boolean b = false;
		try {
			String sql = "select username,password from userinfo where username='"+ username + "';";
			ResultSet rs = db.executeQuery(sql);
			b = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeDB();
		}
		return b;
	}

	/*
	 * 返回1添加成功 -1添加失败11用户名已存在
	 */
	public int zhuce(){
		try {
			boolean b = this.isExtend();
			if (b) {
				return 11;
			}
			String sql = "insert into userinfo values (null,'" + user.getUsername()+ "','" + user.getPassword() + "','" + user.getSex()+ "','" + user.getTelephone() + "','" + user.getRecipients() + "','"+ user.getAddress() + "','0')";
			System.out.println(sql);
			
			int r = db.executeUpdate(sql);
			return r;
		} finally {
			db.closeDB();
		}
	}

	public int xiugai() {
		String sql = "update userinfo set password='" + user.getPassword()
				+ "',sex='" + user.getSex() + "',telephone='"
				+ user.getTelephone() + "',address='" + user.getAddress()
				+ "',recipients='" + user.getRecipients() + "',type='"
				+ user.getType() + "' where username='" + user.getUsername()
				+ "'";
		int r = db.executeUpdate(sql);
		db.closeDB();
		return r;
	}

	public ArrayList<userinfo> showall() {
		userinfo user = null;
		ArrayList<userinfo> list = new ArrayList<userinfo>();
		String sql = "select * from userinfo;";
		System.out.println(sql);
		ResultSet rs = db.executeQuery(sql);
		try {
			while(rs.next()){
				user = new userinfo();
				user.setUsername(rs.getString("username"));
				user.setSex(rs.getString("sex"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setRecipients(rs.getString("recipients"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			
		}
		return list;

	}

	public ArrayList<userinfo> showONE(String username) {
		ArrayList<userinfo> list=new ArrayList<userinfo>();
		String sql = "select * from userinfo where username='" + username + "'";
		System.out.print(sql);
		ResultSet rs = db.executeQuery(sql);
		try {
			while (rs.next()) {
				userinfo user = new userinfo();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setRecipients(rs.getString("recipients"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			db.closeDB();
		}
		return list;
	}

	public int delect_userinfo(String username) {
		String sql = "delete from userinfo where username='" + username + "'; ";
		int r = db.executeUpdate(sql);
		db.closeDB();
		return r;

	}

}