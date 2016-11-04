package entity;

import entity.exception.QuestionValidateException;

import java.util.HashSet;
import java.util.Set;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/3
 * Description:
 * All rights reserved.
 */
public class Question {
	private int id;
	private String tittle;
	private int qType;
	String content;
	private int pay;
	private String userId;
	private Set<String> tag = new HashSet();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTittle() {
		return tittle;
	}

	public void setTittle(String tittle) {
		this.tittle = tittle;
	}

	public int getqType() {
		return qType;
	}

	public void setqType(int qType) {
		this.qType = qType;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public void setTag(String tags) {
		String[] stag = tags.split(",,;, ");
		for (int i = 0; i < stag.length; i++) {
			tag.add(stag[i]);
		}
	}

	public Set<String> getTag() {
		return tag;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void validate() throws QuestionValidateException {
		if (tittle == "") {
			throw new QuestionValidateException("标题不能为空");
		} else if (qType == 0) {
			throw new QuestionValidateException("请选择问题类型");
		} else if (content == "") {
			throw new QuestionValidateException("请补充问题描述");
		} else if (pay < 0) {
			throw new QuestionValidateException("悬赏金额输入错误");
		}
	}
}

