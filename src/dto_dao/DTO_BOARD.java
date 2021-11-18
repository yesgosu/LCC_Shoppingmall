package dto_dao;

public class DTO_BOARD {
	private String BOARD_NUMBER;
	private String USER_ID;
	private String SUBJECT;
	private String BOARD_CONTENT;
	private String WRITE_DATE;
	
	public DTO_BOARD() {}
	
	public DTO_BOARD(String bOARD_NUMBER, String uSER_ID, String sUBJECT, String bOARD_CONTENT, String wRITE_DATE) {
		BOARD_NUMBER = bOARD_NUMBER;
		USER_ID = uSER_ID;
		SUBJECT = sUBJECT;
		BOARD_CONTENT = bOARD_CONTENT;
		WRITE_DATE = wRITE_DATE;
	}
	
	public String getBOARD_NUMBER() {
		return BOARD_NUMBER;
	}
	public void setBOARD_NUMBER(String bOARD_NUMBER) {
		BOARD_NUMBER = bOARD_NUMBER;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getSUBJECT() {
		return SUBJECT;
	}
	public void setSUBJECT(String sUBJECT) {
		SUBJECT = sUBJECT;
	}
	public String getBOARD_CONTENT() {
		return BOARD_CONTENT;
	}
	public void setBOARD_CONTENT(String bOARD_CONTENT) {
		BOARD_CONTENT = bOARD_CONTENT;
	}
	public String getWRITE_DATE() {
		return WRITE_DATE;
	}
	public void setWRITE_DATE(String wRITE_DATE) {
		WRITE_DATE = wRITE_DATE;
	}
	
	
}
