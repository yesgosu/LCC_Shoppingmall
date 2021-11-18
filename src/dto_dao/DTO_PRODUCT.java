package dto_dao;

public class DTO_PRODUCT {
	private String productCode;
	private String productType;
	private String productName;
	private String productPrice;
	
	public DTO_PRODUCT(String productCode, String productType, String productName, String productPrice) {
		this.productCode = productCode;
		this.productType = productType;
		this.productName = productName;
		this.productPrice = productPrice;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
}
