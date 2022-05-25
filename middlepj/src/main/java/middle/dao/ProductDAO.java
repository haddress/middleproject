package middle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import middle.dao.DAO;
import middle.vo.ProductVO;

public class ProductDAO extends DAO {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;

	// 상품등록
	public void insertProduct(ProductVO product) {
		conn = getConnect();
		String sql = "insert into product(product_code,product_category,product_name,product_price,product_amount,product_exp,product_img,product_date) values(product_seq.NEXTVAL,?,?,?,?,?,?,sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, product.getProductCate());
			psmt.setString(2, product.getProductName());
			psmt.setInt(3, product.getProductPrice());
			psmt.setInt(4, product.getProductAmount());
			psmt.setString(5, product.getProductExp());
			psmt.setString(6, product.getProductImg());

			int r = psmt.executeUpdate();
			System.out.println(r + "건의 상품이 등록되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}

	}
	

	// 카테고리별보기 -> 카테고리별로 보기(1.간식 2.장난감 3.실내용품 4.목욕/미용)
	public List<ProductVO> listProduct(String productCate) {
		List<ProductVO> productList = new ArrayList<ProductVO>();
		conn = getConnect();
		String sql = "select * from product where product_category = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, productCate);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductCode(rs.getInt("product_code"));
				vo.setProductCate(rs.getString("product_category"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductPrice(rs.getInt("product_price"));
				vo.setProductAmount(rs.getInt("product_amount"));
				vo.setProductExp(rs.getString("product_exp"));
				vo.setProductImg(rs.getString("product_img"));
				vo.setProductDate(rs.getString("product_date"));

				productList.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return productList;
	}

	// 최신목록
	public List<ProductVO> listNew() {
		conn = getConnect();
		List<ProductVO> newList = new ArrayList<ProductVO>();
		String sql = "select * from (select * from product order by product_code DESC) "
				+ "where rownum <=8";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductCode(rs.getInt("product_code"));
				vo.setProductCate(rs.getString("product_category"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductPrice(rs.getInt("product_price"));
				vo.setProductAmount(rs.getInt("product_amount"));
				vo.setProductExp(rs.getString("product_exp"));
				vo.setProductImg(rs.getString("product_img"));
				vo.setProductDate(rs.getString("product_date"));

				newList.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return newList;
	}

	// 상품상세보기
	public ProductVO productDetail(int productCode) {
		conn = getConnect();
		String sql = "select * from product where product_code = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productCode);
			rs = psmt.executeQuery();
			if (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductCode(rs.getInt("product_code"));
				vo.setProductCate(rs.getString("product_category"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductPrice(rs.getInt("product_price"));
				vo.setProductAmount(rs.getInt("product_amount"));
				vo.setProductExp(rs.getString("product_exp"));
				vo.setProductImg(rs.getString("product_img"));
				vo.setProductDate(rs.getString("product_date"));
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
	}
	
	// 상품이름으로 상품상세보기
	public ProductVO productName(String productName) {
		conn = getConnect();
		String sql = "select * from product where product_Name = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, productName);
			rs = psmt.executeQuery();
			if (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductCode(rs.getInt("product_code"));
				vo.setProductCate(rs.getString("product_category"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductPrice(rs.getInt("product_price"));
				vo.setProductAmount(rs.getInt("product_amount"));
				vo.setProductExp(rs.getString("product_exp"));
				vo.setProductImg(rs.getString("product_img"));
				vo.setProductDate(rs.getString("product_date"));
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
	}
	
	// 상품카테고리 페이징
	public List<ProductVO> getProductList(int pageNum, int amount, String productCate) {
		conn = getConnect();
		List<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select * "
				+ "from (select rownum rn, "
				+ "        rv.* "
				+ "        from(select * from product where product_category=? order by product_date desc) rv) "
				+ "where rn > ? and rn <= ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, productCate);
			psmt.setInt(2, (pageNum - 1) * amount);
			psmt.setInt(3, pageNum * amount);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProductCode(rs.getInt("product_code"));
				vo.setProductCate(rs.getString("product_category"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductPrice(rs.getInt("product_price"));
				vo.setProductAmount(rs.getInt("product_amount"));
				vo.setProductExp(rs.getString("product_exp"));
				vo.setProductImg(rs.getString("product_img"));
				vo.setProductDate(rs.getString("product_date"));

				productList.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return productList;
	}
	
	// 상품카테고리 전체 상품 수
	public int getTotalPd(String productCate) {
		conn = getConnect();
		int result = 0;
		String sql = "select count(*) as total from product where product_category=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, productCate);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return result;
	}
	

}
