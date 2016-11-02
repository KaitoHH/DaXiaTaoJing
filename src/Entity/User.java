package Entity;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/10/26
 * Description:
 * All rights reserved.
 */
public class User {
	String name;
	String id;
	String dept;
	String email;
	int gender;
	String introduction;
	String longIntro;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getLongIntro() {
		return longIntro;
	}

	public void setLongIntro(String longIntro) {
		this.longIntro = longIntro;
	}
}
