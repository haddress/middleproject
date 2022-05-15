package middle.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import middle.dao.DAO;

public class ProductDAO extends DAO {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;

	// 상품등록
	public void insertProduct(ProductVO product) {
		conn = getConnect();
		String sql = "insert into product(product_code,product_category,product_name,product_price,product_amount,product_exp,product_img) values(코드자동입력함수,?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, product.getProduct_code());
			psmt.setString(2, product.getProduct_category());
			psmt.setString(3, product.getProduct_name());
			psmt.setInt(4, product.getProduct_price());
			psmt.setInt(5, product.getProduct_amount());
			psmt.setString(6, product.getProduct_exp());
			psmt.setString(7, product.getProduct_img());

			int r = psmt.executeUpdate();
			System.out.println(r + "건의 상품이 등록되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}

	}

	// 카테고리별보기 -> 카테고리별로 보기(1.간식 2.장난감 3.실내용품 4.목욕/미용)
	public List<ProductVO> listProduct(String product_category) {
		List<ProductVO> productList = new ArrayList<ProductVO>();
		conn = getConnect();
		String sql = "select * from product where product_category = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, product_category);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProduct_code(rs.getString("product_code"));
				vo.setProduct_category(rs.getString("product_category"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
				vo.setProduct_amount(rs.getInt("product_amount"));
				vo.setProduct_exp(rs.getString("product_exp"));
				vo.setProduct_img(rs.getString("product_img"));

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
		String sql = "select product_img, product_name, product_price" + "from" + "(select * from product"
				+ "order by regdate DESC)" + "where rownum <=12";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProduct_img(rs.getString("product_img"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));

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
	public ProductVO productDetail(String product_code) {
		conn = getConnect();
		String sql = "select * from product where product_code = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, product_code);
			rs = psmt.executeQuery();
			if (rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProduct_code(rs.getString("product_code"));
				vo.setProduct_category(rs.getString("product_category"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
				vo.setProduct_amount(rs.getInt("product_amount"));
				vo.setProduct_exp(rs.getString("product_exp"));
				vo.setProduct_img(rs.getString("product_img"));
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
	}

}
