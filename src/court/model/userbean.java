package court.model;



public class userbean {
	
	
	String custnames;
	String custic;
	String email;
	String custpassword;
	String address;
	String contactnum;
	int memberid;
	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	public boolean valid;
	public String getCustnames() {
		return custnames;
	}
	public void setCustnames(String custnames) {
		this.custnames = custnames;
	}
	public String getCustic() {
		return custic;
	}
	public void setCustic(String custic) {
		this.custic = custic;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCustpassword() {
		return custpassword;
	}
	public void setCustpassword(String custpassword) {
		this.custpassword = custpassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactnum() {
		return contactnum;
	}
	public void setContactnum(String contactnum) {
		this.contactnum = contactnum;
	}
	
	
	
	

	}



