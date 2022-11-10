package studentcurd.model;

import java.util.Arrays;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String dob;
	private String course;
	private String email;
	private String mobile;
	private String gender;
//	@Lob
//	private byte[] studentimg;
	private String fname;
	private String mname;
	@Column(length = 1500)
	private String address;
	
	// getter/setter, constructor, constructor super class, toStriing
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
//	public byte[] getStudentimg() {
//		return studentimg;
//	}
//	public void setStudentimg(byte[] studentimg) {
//		this.studentimg = studentimg;
//	}
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Student(int id, String name, String dob, String course, String email, String mobile, String gender,
			byte[] studentimg, String fname, String mname, String address) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.course = course;
		this.email = email;
		this.mobile = mobile;
		this.gender = gender;
//		this.studentimg = studentimg;
		this.fname = fname;
		this.mname = mname;
		this.address = address;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", dob=" + dob + ", course=" + course + ", email=" + email
				+ ", mobile=" + mobile + ", gender=" + gender + ", fname=" + fname + ", mname=" + mname + ", address=" + address + "]";
	}
	
	
}