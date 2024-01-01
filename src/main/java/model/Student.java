package model;

import java.io.Serializable;

public class Student implements Serializable{
	private String studentId;
	private String name;
	private String gender;
	private String address;
	private boolean graduationStatus;
	private int course;
	
	public int getCourse() {
		return course;
	}
	public void setCourse(int course) {
		this.course = course;
	}
	public Student() {
		super();
	}
	public Student(String studentId, String name, String gender, String address, boolean graduationStatus) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.graduationStatus = graduationStatus;
	}
	public Student(String studentId, String name, String gender, String address, boolean graduationStatus, int course) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.graduationStatus = graduationStatus;
		this.course = course;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public boolean isGraduationStatus() {
		return graduationStatus;
	}
	public void setGraduationStatus(boolean graduationStatus) {
		this.graduationStatus = graduationStatus;
	}

}
