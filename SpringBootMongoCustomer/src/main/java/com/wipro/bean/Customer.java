package com.wipro.bean;


import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "customer")
public class Customer {

	@Transient
	public static final String SEQUNCE_NAME = "user_sequence";
	
	@Id
	private int custid;
	private String fname;
	private String mname;
	private String ltname;
	private String city;
	private String mobileno;
	private String occupation;
	
	public Customer() {
		
	}

	public Customer(int custid, String fname, String mname, String ltname, String city, String mobileno, String occupation) 
	{
		super();
		this.custid=custid; 
		this.fname=fname; 
		this.mname=mname; 
		this.ltname=ltname; 
		this.city=city; 
		this.mobileno=mobileno; 
		this.occupation=occupation; 
		
	}

	public int getCustid() {
		return custid;
	}

	public void setCustid(int custid) {
		this.custid = custid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getLtname() {
		return ltname;
	}

	public void setLtname(String ltname) {
		this.ltname = ltname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}


	@Override
	public String toString() {
		return "Customer [custid=" + custid +", fname=" + fname + ", mname=" + mname + ", ltname=" + ltname + ", city=" + city + ", mobileno=" + mobileno +
				 ", occupation=" + occupation + " ]";
				}
	
}
