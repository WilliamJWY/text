package connn;
/**
 * 数据库操作公共类
 * @author Administrator
 *
 */
import java.sql.*;
public class DB {
	private Connection conn;//数据库连接
	private Statement stmt;//发送sql的陈述
	private ResultSet rs;//查询结果集
	
	/**
	 * 1、构造方法：加载数据库驱动程序
	 */
	public DB(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.print("加载数据库驱动程序失败。");
		}
	}
	
	/**
	 * 2、连接数据库
	 * @return 返回一个Connection对象，代表数据库连接
	 */
	public Connection getConnetion(){
		String url = "jdbc:mysql://localhost:3306/store?characterEncoding=utf-8";
		String user = "root";
		String pass = "root";
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("连接数据库失败。");
		}
		return conn;
	}
	
	/**
	 * 3、创建发送sql命令的陈述
	 * @return 返回Statement对象，该对象用来发送sql命令的陈述
	 */
	public Statement getStatement(){
		try {
			if(conn == null){
				conn = this.getConnetion();//连接数据库
			}
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("操作数据库失败。");
		}
		return stmt;
	}
	
	/**
	 * 4、执行SQL命令（insert、update、delete）
	 * @param sql
	 * @return
	 */
	public int executeUpdate(String sql){
		int r = 0;
		try {
			if(stmt==null){
				stmt=this.getStatement();
			}
			r = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("操作数据库失败。");
		}
		return r;
	}
	
	/**
	 * 5、执行sql命令(select查询命令)
	 * @param sql
	 * @return
	 */
	public ResultSet executeQuery(String sql){
		try {
			if(stmt == null){
				stmt = this.getStatement();//创建陈述
			}
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("操作数据库失败。");
		}
		return rs;
	}
	
	/**
	 * 6、关闭数据库，释放资源
	 */
	public void closeDB(){
		try {
			if(rs != null){
				rs.close();
				rs = null;
			}
			
			if(stmt != null){
				stmt.close();
				stmt = null;
			}
			
			if(conn != null){
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("关闭数据库失败。");
		}
	}
}
