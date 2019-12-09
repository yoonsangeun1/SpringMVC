package com.moving.domain;

public class CodeTypeMasterVO {
	private int id; 						/* 아이디 */
	private int codeTypeId; 				/* 코드_유형_아이디 */ 
	private String codeTypeName;			/* 코드_유형_명 */
	private String codeTypeNameEnglish; 	/* 코드_유형_명_영문 */
	private String registerDate;   			/* 등록_날짜 */

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCodeTypeId() {
		return codeTypeId;
	}
	public void setCodeTypeId(int codeTypeId) {
		this.codeTypeId = codeTypeId;
	}
	public String getCodeTypeName() {
		return codeTypeName;
	}
	public void setCodeTypeName(String codeTypeName) {
		this.codeTypeName = codeTypeName;
	}
	public String getCodeTypeNameEnglish() {
		return codeTypeNameEnglish;
	}
	public void setCodeTypeNameEnglish(String codeTypeNameEnglish) {
		this.codeTypeNameEnglish = codeTypeNameEnglish;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}


}
