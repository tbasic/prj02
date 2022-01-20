package customer.controller.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		System.out.println("NoticeController ~~");
		//db에서 notices의 테이블에 있는 내용 모두를 조회-> 이곳에 가져오기
		
		NoticeDao dao=new NoticeDao();
		List<Notice> list=dao.noticeSelAll();
		
		//List<Notice>를 request에 저장
		request.setAttribute("list", list);
		//notice.jsp로 보내면서 request도 함께 포워딩
		request.getRequestDispatcher("notice.jsp").forward(request, response);
		
	}
	
}
