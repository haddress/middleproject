package middle.web;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {

   HashMap<String, Control> list = null;
   String charset = null;
   @Override
   public void init(ServletConfig config) throws ServletException {
      charset = config.getInitParameter("charset");
      list = new HashMap<String, Control>();
         
      list.put("/delete.do", new UserDeleteControl()); //삭제
      list.put("/modify.do", new ModifyControl()); // 수정
      list.put("/addUser.do", new addUserControl()); // 가입
      list.put("/logout.do", new logoutControl()); // 로그아웃
      list.put("/mypage.do", new Orderlist()); //마이페이지 구매내역
      list.put("/search.do", new SearchControl());
      list.put("/pwfind.do", new PasswordFindControl());
      list.put("/idcheck.do", new idcheckControl());      
      // 고객센터
      list.put("/qna.do", new qnaListControl()); //문의글 전체리스트
      list.put("/detail.do", new qnaDetailControl()); //문의글 상세보기
      list.put("/qnaAdd.do", new qnaAddControl()); //문의글쓰기
      list.put("/qnaDelete.do", new qnaDeleteControl()); //문의글 삭제
      list.put("/qnaUpdate.do", new qnaUpdateControl()); //문의글 수정

      // 상품
      list.put("/productAdd.do", new ProAddControl()); // 관리자 상품등록
      list.put("/CateList.do", new CateListControl()); // 카테고리별 목록
      list.put("/productDetail.do", new ProDetailControl()); // 한건상세 + 상품리뷰리스트
      list.put("/mainList.do", new NewListControl()); // 최신상품 목록
      list.put("/buy.do", new BuyControl()); // 구매하기
      list.put("/realbuy.do",new RealBuyControl()); //진짜구매
      list.put("/cancel.do", new CancelControl()); //취소하기
      list.put("/refund.do", new RefundControl());
      
      // 리뷰
      list.put("/reviewOrderList.do", new RevOrListControl()); // 세션 아이디가 구매한 상품 조회
      list.put("/reviewAdd.do", new ReviewAddControl()); // 리뷰등록
      list.put("/review.do", new ReviewControl()); // 리뷰목록
      list.put("/reviewDetail.do", new RevDetailControl()); // 리뷰상세보기
      list.put("/reviewMoDe.do", new ReviewDeleteControl()); // 리뷰 삭제
      list.put("/reviewModify.do", new ReviewModifyControl()); // 리뷰 수정
      list.put("/productName.do", new ProNameSearchControl()); // 상품이름 검색1

      
      
      //관리자 메뉴입니다   
      list.put("/userList.do", new AdminUserListControl()); //유저리스트
      list.put("/searchUser.do", new AdminUserSearchControl()); //유저단건검색
      list.put("/productMod.do", new AdminProModControl()); //상품정보수정
      list.put("/productSearch.do", new AdminProSearchControl()); //상품단건검색
      list.put("/listProduct.do", new AdminProListControl()); //상품리스트/상품단건삭제
      list.put("/reviewList.do", new AdminReviewListControl());//리뷰리스트
      list.put("/QnAList.do", new AdminQnAListControl());//qna리스트
      list.put("/AllproductDel.do", new AdminProAllDellControl());//상품전체삭제
      list.put("/adminReviewMoDe.do", new AdminReviewDelControl());//관리자리뷰삭제
      list.put("/adminQnaDelete.do", new AdminQnADelControl());//관리자QnA삭제
   }
   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      req.setCharacterEncoding(charset);
      String url = req.getRequestURI(); //사용자 URI정보 /P20220503/memberInsert.do
      String context = req.getContextPath(); // P20220503
      String path = url.substring(context.length()); // P20220503/memberInsert.do여기서 P20220503값을 잘라낸 뒷부분 저장
      
      Control exeCon = list.get(path); //해당되는밸류 리턴
      exeCon.execute(req, resp); //갖고있는메소드실행
   }
   
}

