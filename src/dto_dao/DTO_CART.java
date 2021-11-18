package dto_dao;

public class DTO_CART {
	private String USER_ID;
	private String PRODUCT_CODE;
	private String PRODUCT_OPTION;
	private String PRODUCT_COUNT;
	private String PRODUCT_PRICE;
	
	public DTO_CART() {}
	
	public DTO_CART(String uSER_ID, String pRODUCT_CODE, String pRODUCT_OPTION, String pRODUCT_COUNT,
			String pRODUCT_PRICE) {
		USER_ID = uSER_ID;
		PRODUCT_CODE = pRODUCT_CODE;
		PRODUCT_OPTION = pRODUCT_OPTION;
		PRODUCT_COUNT = pRODUCT_COUNT;
		PRODUCT_PRICE = pRODUCT_PRICE;
	}
	
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getPRODUCT_CODE() {
		return PRODUCT_CODE;
	}
	public void setPRODUCT_CODE(String pRODUCT_CODE) {
		PRODUCT_CODE = pRODUCT_CODE;
	}
	public String getPRODUCT_OPTION() {
		return PRODUCT_OPTION;
	}
	public void setPRODUCT_OPTION(String pRODUCT_OPTION) {
		PRODUCT_OPTION = pRODUCT_OPTION;
	}
	public String getPRODUCT_COUNT() {
		return PRODUCT_COUNT;
	}
	public void setPRODUCT_COUNT(String pRODUCT_COUNT) {
		PRODUCT_COUNT = pRODUCT_COUNT;
	}
	public String getPRODUCT_PRICE() {
		return PRODUCT_PRICE;
	}
	public void setPRODUCT_PRICE(String pRODUCT_PRICE) {
		PRODUCT_PRICE = pRODUCT_PRICE;
	}
	
	
}
