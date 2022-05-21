package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import middle.service.ReviewService;
import middle.vo.ReviewVO;

public class ReviewModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String saveDir = "reviewUpload";
		saveDir = request.getServletContext().getRealPath(saveDir);
		int maxSize = 1024 * 1024 * 10;
		String encoding = "utf-8";
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// 리뷰 수정
		
		System.out.println("리뷰수정 컨트롤");
		
		int rcode = Integer.parseInt(multi.getParameter("rcode"));
		String rtitle = multi.getParameter("rtitle");
		String rcontent = multi.getParameter("rcontent");
		String rimg = multi.getFilesystemName("rimg");
		int rstar = Integer.parseInt(multi.getParameter("rstar"));
		
		ReviewVO vo = new ReviewVO();
		vo.setReviewCode(rcode);
		vo.setReviewTitle(rtitle);
		vo.setReviewContent(rcontent);
		vo.setReviewImg(rimg);
		vo.setReviewStar(rstar);
		
		ReviewService service = new ReviewService();
		service.reviewModify(vo);
		
		request.getRequestDispatcher("result/ReviewModOut.jsp").forward(request, response);
	}

}
