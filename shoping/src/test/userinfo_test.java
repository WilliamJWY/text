package test;

import java.sql.ResultSet;
import java.sql.SQLException;

import connn.DB;

import userinfo.userinfo;

public class userinfo_test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DB db = new DB();
		userinfo user = new userinfo();
		String sql = "select * from userinfo;";
		ResultSet rs = db.executeQuery(sql);

		System.out.println(user);
		
	}

}
