package com.Dao;

public class studentRecord {
	private int rollno;
	private String name;
	private String email;
	private String password;
    private	String branch;
	private String semester;
	private int age;
	private String address;
	private String fathername;
	private String course;
	private String contactno;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public studentRecord(int rollno, String name, String email, String password, String branch, String semester,
			int age, String address, String fathername, String course, String contactno) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.email = email;
		this.password = password;
		this.branch = branch;
		this.semester = semester;
		this.age = age;
		this.address = address;
		this.fathername = fathername;
		this.course = course;
		this.contactno = contactno;
	}
	
	
	
	
	public studentRecord()
	{
		
	}
	@Override
	public String toString() {
		return "studentRecord [rollno=" + rollno + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", branch=" + branch + ", semester=" + semester + ", age=" + age + ", address=" + address
				+ ", fathername=" + fathername + ", course=" + course + ", contactno=" + contactno + "]";
	}
	

}
