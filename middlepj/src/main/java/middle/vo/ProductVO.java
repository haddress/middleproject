package middle.vo;

import middle.dao.DAO;

// 상품판매VO 1
public class ProductVO extends DAO {

	private String product_code;
	private String product_category;
	private String product_name;
	private int product_price;
	private int product_amount;
	private String product_exp;
	private String product_img;
	
	public ProductVO() {
		
	}
	
	public ProductVO(String product_code, String product_category, String product_name, int product_price,
			int product_amount, String product_exp, String product_img) {
		super();
		this.product_code = product_code;
		this.product_category = product_category;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_amount = product_amount;
		this.product_exp = product_exp;
		this.product_img = product_img;
	}

	
	public String getProduct_code() {
		return product_code;
	}

	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getProduct_amount() {
		return product_amount;
	}

	public void setProduct_amount(int product_amount) {
		this.product_amount = product_amount;
	}

	public String getProduct_exp() {
		return product_exp;
	}

	public void setProduct_exp(String product_exp) {
		this.product_exp = product_exp;
	}

	public String getProduct_img() {
		return product_img;
	}

	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}

	
	@Override
	public String toString() {
		return "ProductVO [product_code=" + product_code + ", product_category=" + product_category + ", product_name="
				+ product_name + ", product_price=" + product_price + ", product_amount=" + product_amount
				+ ", product_exp=" + product_exp + ", product_img=" + product_img + "]";
	}
	
	
}
