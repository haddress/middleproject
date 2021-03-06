package middle.service;

import java.util.List;

import middle.dao.ProductDAO;
import middle.vo.ProductVO;

public class ProductService {
	
	ProductDAO dao = new ProductDAO();
	
	// 상품등록
	public void productInsert(ProductVO product) {
		dao.insertProduct(product);
	}
	
	
	// 카테고리별 보기
	public List<ProductVO> cateList(String productCate) {
		return dao.listProduct(productCate);
	}
	
	// 카테고리별 페이징
	public List<ProductVO> getProductList(int pageNum, int amount, String productCate) {
		return dao.getProductList(pageNum, amount, productCate);
	}
	
	// 카테고리별 전체상품수
	public int getTotalPd(String productCate) {
		return dao.getTotalPd(productCate);
	}
	
	
	// 최신목록
	public List<ProductVO> newList() {
		return dao.listNew();
	}
	
	
	// 상품상세보기
	public ProductVO DetailProduct(int productCode) {
		return dao.productDetail(productCode);
	}
	
	// 상품이름으로 검색
	public ProductVO productName(String productName) {
		return dao.productName(productName);
	}
	


	
	
}
