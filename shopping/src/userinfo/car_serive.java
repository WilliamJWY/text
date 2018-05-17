package userinfo;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import connn.DB;


	public class car_serive {
		private DB db = new DB();
		private car car;

		public car_serive() {
		}

		public car_serive(car car) {
			this.car = car;

		}

		public car getCar() {
			return car;
		}

		public void setUserid(car car) {
			this.car = car;
		}
		
		public boolean isExtend() {
			boolean b = false;
			try {
				String sql = "select userid,goodsname from car where goodsname='"+ car.getGoodsname() + "';";
				ResultSet rs = db.executeQuery(sql);
				b = rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				
			}
			return b;
		}

		public boolean isExtend(String carid) {
			boolean b = false;
			try {
				String sql = "select goodsname,goodsid from car where carid='"+ carid + "';";
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
		 * ����1��ӳɹ� -1���ʧ��11�û����Ѵ���
		 */
		public int zhuce(){
			try {
				boolean b = this.isExtend();
				if (b) {
					return 11;
				}
				String sql = "insert into car values (null,'" + car.getUserid()+ "','" + car.getGoodsid() + "','" + car.getGoodsname()+ "','" + car.getPrice() + "','" + car.getNumber() + "','"+ car.getTotal() + "')";
				System.out.println(sql);
				
				int r = db.executeUpdate(sql);
				return r;
			} finally {
				
			}
		}

		public ArrayList<car> showall() {
			car car = null;
			ArrayList<car> list = new ArrayList<car>();
			String sql = "select * from car;";
			System.out.println(sql);
			ResultSet rs = db.executeQuery(sql);
			try {
				while(rs.next()){
					car = new car();
					car.setCarid(rs.getString("Carid"));
					car.setUserid(rs.getString("userid"));
					car.setGoodsid(rs.getString("goodsid"));
					car.setGoodsname(rs.getString("Goodsname"));
					car.setPrice(rs.getString("price"));
					car.setNumber(rs.getString("number"));
					car.setTotal(rs.getString("total"));
					list.add(car);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			} finally {
				
			}
			return list;

		}

/*		public ArrayList<car> showONE(String goodsname) {
			ArrayList<car> list=new ArrayList<car>();
			String sql = "select * from car where goodsname='" + goodsname + "'";
			System.out.print(sql);
			ResultSet rs = db.executeQuery(sql);
			try {
				while (rs.next()) {
					car car = new car();
					car.setUsername(rs.getString("username"));
					car.setPassword(rs.getString("password"));
					car.setSex(rs.getString("sex"));
					car.setTelephone(rs.getString("telephone"));
					car.setAddress(rs.getString("address"));
				    car.setRecipients(rs.getString("recipients"));
					list.add(user);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			} finally {
				db.closeDB();
			}
			return list;
		}*/

		public int delect_car(String carid) {
			String sql = "delete from car where carid='" + carid + "'; ";
			int r = db.executeUpdate(sql);
			db.closeDB();
			return r;

		}
}
