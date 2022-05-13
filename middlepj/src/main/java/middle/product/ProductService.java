package middle.product;

import java.util.List;

public class ProductService {
	
	ProductDAO dao = new ProductDAO();
	
	// 상품등록
	public void productInsert(ProductVO product) {
		dao.insertProduct(product);
	}
	
	// 상품전체보기 -> 카테고리별로 보기(1.간식 2.장난감 3.실내용품 4.목욕/미용)
	public List<ProductVO> productList(String product_category) {
		return dao.listProduct(product_category);
	}
	
	// 상품상세보기
	public ProductVO DetailProduct(String product_code) {
		return dao.productDetail(product_code);
	}
	
	// 상품주문..?

}
