package com.cl.core.bean;
import java.io.Serializable;
import java.util.Date;

/**
 * 客户持久化类
 */
public class Student implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer stu_id;          // 学生编号
	private String stu_name;         // 学生名称
	private String stu_age;			 // 学生年龄
	private String stu_gender;       // 学生性别
	private String stu_faculty;      // 学生所属院校
	private String stu_profession;    // 学生所属专业
	private String stu_class;       // 学生所属班级
	private String stu_number;       // 学生学号
	private String stu_mobile;      // 移动电话
	private String stu_address;     // 联系地址
	private Date stu_createtime;    // 创建时间
	private Integer start ;            // 起始行
	private Integer rows ;             // 所取行数

	public Integer getStu_id() {
		return stu_id;
	}

	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}

	public String getStu_name() {
		return stu_name;
	}

	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}

	public String getStu_age() {
		return stu_age;
	}

	public void setStu_age(String stu_age) {
		this.stu_age = stu_age;
	}

	public String getStu_gender() {
		return stu_gender;
	}

	public void setStu_gender(String stu_gender) {
		this.stu_gender = stu_gender;
	}

	public String getStu_faculty() {
		return stu_faculty;
	}

	public void setStu_faculty(String stu_faculty) {
		this.stu_faculty = stu_faculty;
	}

	public String getStu_profession() {
		return stu_profession;
	}

	public void setStu_profession(String stu_profession) {
		this.stu_profession = stu_profession;
	}

	public String getStu_class() {
		return stu_class;
	}

	public void setStu_class(String stu_class) {
		this.stu_class = stu_class;
	}

	public String getStu_number() {
		return stu_number;
	}

	public void setStu_number(String stu_number) {
		this.stu_number = stu_number;
	}

	public String getStu_mobile() {
		return stu_mobile;
	}

	public void setStu_mobile(String stu_mobile) {
		this.stu_mobile = stu_mobile;
	}

	public String getStu_address() {
		return stu_address;
	}

	public void setStu_address(String stu_address) {
		this.stu_address = stu_address;
	}

	public Date getStu_createtime() {
		return stu_createtime;
	}

	public void setStu_createtime(Date stu_createtime) {
		this.stu_createtime = stu_createtime;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "Student{" +
				"stu_id=" + stu_id +
				", stu_name='" + stu_name + '\'' +
				", stu_age='" + stu_age + '\'' +
				", stu_gender='" + stu_gender + '\'' +
				", stu_faculty='" + stu_faculty + '\'' +
				", stu_profession='" + stu_profession + '\'' +
				", stu_class='" + stu_class + '\'' +
				", stu_number='" + stu_number + '\'' +
				", stu_mobile='" + stu_mobile + '\'' +
				", stu_address='" + stu_address + '\'' +
				", stu_createtime=" + stu_createtime +
				'}';
	}
}
