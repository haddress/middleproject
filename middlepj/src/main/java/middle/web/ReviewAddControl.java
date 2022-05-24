package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import middle.service.ReviewService;
import middle.vo.ReviewVO;

public class ReviewAddControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 리뷰등록
		String saveDir = "reviewUpload";
		saveDir = request.getServletContext().getRealPath(saveDir);
		int maxSize = 1024 * 1024 * 10;
		String encoding = "utf-8";
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		System.out.println("리뷰등록 컨트롤");
		
		
		String Uid = multi.getParameter("rwriter");
		String title = multi.getParameter("rtitle");
		String proName = multi.getParameter("rproduct");
		int star = Integer.parseInt(multi.getParameter("rstar"));
		String content = multi.getParameter("rcontent");
		String img = multi.getFilesystemName("rimg");
		String pass = multi.getParameter("rpass");
		
		ReviewVO vo = new ReviewVO();
		vo.setId(Uid);
		vo.setProductName(proName);
		vo.setReviewPass(pass);
		vo.setReviewTitle(title);
		vo.setReviewContent(content);
		vo.setReviewImg(img);
		vo.setReviewStar(star);
		
		ReviewService service = new ReviewService();
		service.reviewInsert(vo);
		
		
		request.getRequestDispatcher("result/ReviewAddOut.tiles").forward(request, response);
		
		
		
		
		
		
		
		
	
	}

}
