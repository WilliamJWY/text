package userinfo;

public class userinfo {

	/**
	 * @param args�û���Ϣ��
	 */
	//SELECT username,password,sex,recipients,telephone,address,type from userinfo;

	private String username;//�û���
	private String password;//����
	private String sex;//�Ա�
	private String telephone;//�绰
	private String address;//�ջ���ַ
	private String recipients;//�ռ���
	private String type;//�û�����
	
	
	public userinfo(){
		
	}
public userinfo(String username,String password){
	this.username = username;
	this.password = password;
	}
 public userinfo(String username, String password, String sex, String telephone,
		String address, String recipients) {
	this.username = username;
	this.password = password;
	this.sex = sex;
	this.telephone = telephone;
	this.address = address;
	this.recipients = recipients;
}

	public userinfo(String username){
		this.username = username;
		}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRecipients() {
		return recipients;
	}
	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public String toString(){
		if(getType().equals("0")){
			return "�û�" + this.username;
		}else{
			return "����Ա" + this.username;
		}
	}

}
