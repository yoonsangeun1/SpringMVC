package com.moving.domain;

public class CodeMasterVO {
	
	private int id; 						/* 아이디 */
	private int codeNo; 					/* 코드_번호 */ 
	private int codeTypeId; 				/* 코드_유형_아이디 */ 
	private String categoryNameReference;	/* 카테고리_명_참조 */ 
	private String categoryName;			/* 카테고리_명 */	
	private String tableName; 				/* 테이블_명 */
	private String registerDate;   			/* 등록_날짜 */
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCodeNo() {
		return codeNo;
	}
	public void setCodeNo(int codeNo) {
		this.codeNo = codeNo;
	}
	public int getCodeTypeId() {
		return codeTypeId;
	}
	public void setCodeTypeId(int codeTypeId) {
		this.codeTypeId = codeTypeId;
	}
	public String getCategoryNameReference() {
		return categoryNameReference;
	}
	public void setCategoryNameReference(String categoryNameReference) {
		this.categoryNameReference = categoryNameReference;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	
	
}
