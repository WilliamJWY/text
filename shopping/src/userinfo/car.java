package userinfo;
/*
 *  `carid`  '购物车编号',
  `userid` '用户id',
  `goodsid` '商品编号',
  `goodsname` '商品名称',
  `price` '商品单价',
  `number`  '商品数量',
  `total` '商品总价',
 */
public class car {

	private String carid;
	private String userid;
	private String goodsid;
	private String goodsname;
	private String price;
	private String number;
	private String total;
	
	
	public car(){
		
	}
	
public car(String userid, String goodsid, String goodsname, String price,
			String number, String total) {
		this.userid = userid;
		this.goodsid = goodsid;
		this.goodsname = goodsname;
		this.price = price;
		this.number = number;
		this.total = total;
	}

public car(String goodsname){
	this.goodsname = goodsname;
	}
public String getCarid() {
	return carid;
}
public void setCarid(String carid) {
	this.carid = carid;
}
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getGoodsid() {
	return goodsid;
}
public void setGoodsid(String goodsid) {
	this.goodsid = goodsid;
}
public String getGoodsname() {
	return goodsname;
}
public void setGoodsname(String goodsname) {
	this.goodsname = goodsname;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getTotal() {
	return total;
}
public void setTotal(String total) {
	this.total = total;
}

}