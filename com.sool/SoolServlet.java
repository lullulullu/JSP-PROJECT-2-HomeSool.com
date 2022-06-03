package com.sool;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.FileManager;
import com.util.MyUtil;
import com.util.SJDBConn;

public class SoolServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);	
	}

	protected void forward(HttpServletRequest req, HttpServletResponse resp, String url) throws ServletException, IOException {

		RequestDispatcher rd = req.getRequestDispatcher(url);

		rd.forward(req, resp);

	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection conn = SJDBConn.getConnection();
		SoolUserDAO dao = new SoolUserDAO(conn);
		SoolProdDAO dao1 = new SoolProdDAO(conn);
		SoolBorderDAO dao2 = new SoolBorderDAO(conn);

		MyUtil myUtil = new MyUtil();

		String cp = req.getContextPath();
		String uri = req.getRequestURI();

		String url;

		String root = getServletContext().getRealPath("/");
		String path = root + "hs" + File.separator + "prod_if";

		File f = new File(path);

		if(!f.exists()) {
			f.mkdirs();
		}

		//ȸ������ ��Ʈ ����
		if(uri.indexOf("create1.com")!=-1) {

			url = "/sool/create1.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("create2.com")!=-1) {

			url = "/sool/create2.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("main.com")!=-1) {



			url = "/sool/main.jsp";
			forward(req, resp, url);





		}else if(uri.indexOf("create2_ok.com")!=-1) {

			String user_id = req.getParameter("user_id");
			String user_name =req.getParameter("user_name");

			List<SoolUserDTO> lists = dao.getLists();

			Iterator<SoolUserDTO> it = lists.iterator();

			while (it.hasNext()) {

				SoolUserDTO dto1 = it.next();


				if(dto1.getUser_id().contains(user_id)) {

					req.setAttribute("ovId", user_id + "�� �̹� �����ϴ� ���̵� �Դϴ�");

					url = "/sool/create2.jsp";
					forward(req, resp, url);
					return;
				}

			}


			SoolUserDTO dto = new SoolUserDTO();



			dto.setUser_id(req.getParameter("user_id"));
			dto.setUser_pwd(req.getParameter("user_pwd"));
			dto.setUser_nick(req.getParameter("user_nick"));
			dto.setUser_name(req.getParameter("user_name"));
			dto.setUser_email(req.getParameter("user_email"));
			dto.setUser_tel(req.getParameter("user_tel"));
			dto.setUser_addr1(req.getParameter("user_addr1"));
			dto.setUser_addr2(req.getParameter("user_addr2"));
			dto.setUser_gender(req.getParameter("user_gender"));
			dto.setUser_bir1(Integer.parseInt(req.getParameter("user_bir1")));
			dto.setUser_bir2(Integer.parseInt(req.getParameter("user_bir2")));
			dto.setUser_bir3(Integer.parseInt(req.getParameter("user_bir3")));
			dto.setUser_rid(req.getParameter("user_rid"));



			dao.insertData(dto);



			req.setAttribute("joinName", user_name);


			url = cp + "/homesool/create3.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("create3.com")!=-1) {


			url = "/sool/create3.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("login.com")!=-1) {



			url ="/sool/login.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("login_ok.com")!=-1) {
			//�α��� ����	
			String user_id = req.getParameter("user_id");
			String user_pwd = req.getParameter("user_pwd");

			SoolUserDTO dto = dao.getReadData(user_id);

			if(dto==null || (!dto.getUser_pwd().equals(user_pwd))) {

				req.setAttribute("message", "���̵� �Ǵ� �н����带 ��Ȯ�� �Է��ϼ���");

				//req.setAttribute("spwd", "��й�ȣã��");

				url = "/sool/login.jsp";
				forward(req, resp, url);
				return;

			}

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			infos.setUser_id(dto.getUser_id());
			infos.setUser_name(dto.getUser_name());
			infos.setUser_pwd(dto.getUser_pwd());

			session.setAttribute("customInfos", infos);

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("list_p.com")!=-1) { 
			//��ǰ �̹��� ����
			int dataCount = dao1.getDataCount();

			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			List<SoolProdDTO> lists = dao1.getLists(start, end);

			String listUrl = cp + "/homesool/list_p.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			String deletePath = cp + "/homesool/delete.com";
			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("deletePath", deletePath);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			url = "/sool/list_p.jsp";
			forward(req, resp, url);


		}else if(uri.indexOf("delete.com") !=-1) {

			int prod_no = Integer.parseInt(req.getParameter("prod_no"));
			SoolProdDTO dto = dao1.getReadData(prod_no);

			//���ϻ���
			FileManager.doFileDelete(dto.getProd_sImg(), path);

			//db ����
			dao1.deleteData(prod_no);

			url = cp + "/homesool/list_p.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("upload_p.com")!=-1) {

			url = "/sool/upload_p.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("upload_p_ok.com")!=-1) {

			//���� ���ε�

			String encType = "UTF-8";
			int maxSize = 10*1024*1024;

			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType, new DefaultFileRenamePolicy());



			if(mr.getFile("upload") != null) {

				SoolProdDTO dto = new SoolProdDTO();


				dto.setProd_name(mr.getParameter("prod_name"));
				dto.setProd_price(Integer.parseInt(mr.getParameter("prod_price")));
				dto.setProd_quan(Integer.parseInt(mr.getParameter("prod_quan")));
				dto.setProd_cate(mr.getParameter("prod_cate"));
				dto.setProd_oImg(mr.getOriginalFileName("upload"));
				dto.setProd_sImg(mr.getFilesystemName("upload"));

				dao1.insertData(dto);

			}

			url = cp + "/homesool/list_p.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("csCenter.com")!=-1) {	

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			url = "/sool/csCenter.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("logout.com")!=-1) {

			HttpSession session = req.getSession();

			session.removeAttribute("customInfos");
			session.invalidate();

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("pwd.com")!=-1) {

			url = "/sool/f_pwd.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("pwd_ok.com")!=-1) {

			String user_id = req.getParameter("user_id");
			String user_tel = req.getParameter("user_tel");

			SoolUserDTO dto = dao.getReadData(user_id);

			if(!dto.getUser_tel().equals(user_tel)) {

				req.setAttribute("message2", "ȸ�� ������ ã�� �� �����ϴ�");


				url = "/homesool/pwd.com";
				forward(req, resp, url);
				return;

			}


			req.setAttribute("ovName", "ȸ������ ��й�ȣ��" + dto.getUser_pwd() + "�Դϴ�");


			url = "/homesool/pwd.com";
			forward(req, resp, url);

			return;






		}else if(uri.indexOf("list_p.com")!=-1) {	

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			url = "/sool/list_p.jsp";
			forward(req, resp, url);


		}else if(uri.indexOf("payment.com")!=-1) {	

			//-------------�α��� ó��------------------------------
			HttpSession session = req.getSession();

			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");

			if(info == null) {

				url = "/sool/login.jsp";
				forward(req, resp, url);
				return;
			}
			//-----------------------------------------------------
			String user_id = info.getUser_id();

			SoolUserDTO dto = dao.getReadData(user_id);





			url = "/sool/payment.jsp";
			forward(req, resp, url);



		}else if(uri.indexOf("mypage.com")!=-1) {



			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");

			if(info == null) {

				url = "/sool/login.jsp";
				forward(req, resp, url);
				return;
			}

			SoolUserDTO dto = dao.getReadData(info.getUser_id());
			req.setAttribute("dto", dto);

			url ="/sool/myPage.jsp";
			forward(req, resp, url);





			//ȸ�� ���� ����	
		}else if(uri.indexOf("update.com")!= -1) {

			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");

			SoolUserDTO dto = dao.getReadData(info.getUser_id());
			req.setAttribute("dto", dto);
			//ȸ���������� ������ ������

			url = "/sool/update.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("update_ok.com")!=-1) {

			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");


			SoolUserDTO dto = new SoolUserDTO();

			dto.setUser_id(req.getParameter("user_id")); 
			dto.setUser_pwd(req.getParameter("user_pwd"));
			dto.setUser_nick(req.getParameter("user_nick")); 
			dto.setUser_name(req.getParameter("user_name")); 
			dto.setUser_email(req.getParameter("user_email"));
			dto.setUser_tel(req.getParameter("user_tel"));
			dto.setUser_addr1(req.getParameter("user_addr1"));
			dto.setUser_addr2(req.getParameter("user_addr2"));
			dto.setUser_gender(req.getParameter("user_gender"));
			dto.setUser_bir1(Integer.parseInt(req.getParameter("user_bir1")));
			dto.setUser_bir2(Integer.parseInt(req.getParameter("user_bir2")));
			dto.setUser_bir3(Integer.parseInt(req.getParameter("user_bir3")));
			dto.setUser_rid(req.getParameter("user_rid"));


			dao.updateData(dto);

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);

		}else if(uri.indexOf("delete_ok.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");


			url = "/sool/deleted.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("delete_ok2.com")!=-1) {

			String user_p = req.getParameter("user_pwd");

			System.out.println(user_p);

			HttpSession session = req.getSession();
			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");

			String user_id = info.getUser_id();
			String user_pwd = info.getUser_pwd();

			System.out.println(user_pwd);

			if(!user_p.equals(user_pwd)) {

				req.setAttribute("errorMessage", "��й�ȣ�� �ٸ��ϴ�");

				url = "/sool/deleted.jsp";
				forward(req, resp, url);
				return;
			}



			dao.deleteData(user_id);

			//session.removeAttribute("customInfos");
			session.invalidate();


			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);

			//�߰�------------------------------------------------
		}else if(uri.indexOf("list_bp.com")!=-1) {	

			url = "/sool/list_bp.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("new.com")!=-1) {	

			url = "/sool/new.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("best.com")!=-1) {	

			url = "/sool/best2.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("recommend.com")!=-1) {	

			url = "/sool/recommend.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("guide.com")!=-1) {	

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			url = "/sool/guide3.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("delivery.com")!=-1) {	

			url = "/sool/delivery_t.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("membership.com")!=-1) {	

			url = "/sool/member.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("benefit.com")!=-1) {	

			url = "/sool/benefit.jsp";
			forward(req, resp, url);

			//���ɸ� �� ������--------------------------------------------------
		}else if(uri.indexOf("p_mak_1.com")!=-1) {	//�˻���(����������)

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();



			session.setAttribute("customInfos", infos);



			url = "/sool/detail_p_mak_1.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("p_mak_2.com")!=-1) {	

			url = "/sool/detail_p_mak_2.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_3.com")!=-1) {	

			url = "/sool/detail_p_mak_3.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_4.com")!=-1) {	

			url = "/sool/detail_p_mak_4.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_5.com")!=-1) {	

			url = "/sool/detail_p_mak_5.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_6.com")!=-1) {	

			url = "/sool/detail_p_mak_6.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_7.com")!=-1) {//�˻���(����������)	

			url = "/sool/detail_p_mak_7.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_8.com")!=-1) {	

			url = "/sool/detail_p_mak_8.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_9.com")!=-1) {	

			url = "/sool/detail_p_mak_9.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_mak_10.com")!=-1) {	

			url = "/sool/detail_p_mak_10.jsp";
			forward(req, resp, url);

			//������--------------------------------------------------
		}else if(uri.indexOf("p_soju_11.com")!=-1) {	

			url = "/sool/detail_p_soju_11.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_12.com")!=-1) {	

			url = "/sool/detail_p_soju_12.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_13.com")!=-1) {	

			url = "/sool/detail_p_soju_13.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_14.com")!=-1) {	

			url = "/sool/detail_p_soju_14.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_15.com")!=-1) {	

			url = "/sool/detail_p_soju_15.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_16.com")!=-1) {	

			url = "/sool/detail_p_soju_16.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("p_soju_17.com")!=-1) {	

			url = "/sool/detail_p_soju_17.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_18.com")!=-1) {	

			url = "/sool/detail_p_soju_18.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_soju_19.com")!=-1) {	

			url = "/sool/detail_p_soju_19.jsp";
			forward(req, resp, url);

			//û��--------------------------------------------------
		}else if(uri.indexOf("p_chung_20.com")!=-1) {	

			url = "/sool/detail_p_chung_20.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_21.com")!=-1) {	

			url = "/sool/detail_p_chung_20.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_22.com")!=-1) {	

			url = "/sool/detail_p_chung_22.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_23.com")!=-1) {	

			url = "/sool/detail_p_chung_23.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_24.com")!=-1) {	

			url = "/sool/detail_p_chung_24.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_25.com")!=-1) {	

			url = "/sool/detail_p_chung_25.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_26.com")!=-1) {	

			url = "/sool/detail_p_chung_26.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("p_chung_27.com")!=-1) {//�˻���(����������)	

			url = "/sool/detail_p_chung_27.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_chung_28.com")!=-1) {	

			url = "/sool/detail_p_chung_28.jsp";
			forward(req, resp, url);
			//����--------------------------------------------

		}else if(uri.indexOf("p_wine_29.com")!=-1) {	

			url = "/sool/detail_p_wine_29.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("p_wine_30.com")!=-1) {	

			url = "/sool/detail_p_wine_30.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_31.com")!=-1) {	

			url = "/sool/detail_p_wine_31.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_32.com")!=-1) {	

			url = "/sool/detail_p_wine_32.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_33.com")!=-1) {	

			url = "/sool/detail_p_wine_33.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_34.com")!=-1) {//�˻���(����������)	

			url = "/sool/detail_p_wine_34.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_35.com")!=-1) {	

			url = "/sool/detail_p_wine_35.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_36.com")!=-1) {	

			url = "/sool/detail_p_wine_26.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_37.com")!=-1) {	

			url = "/sool/lidetail_p_wine_37_bp.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("p_wine_38.com")!=-1) {	

			url = "/sool/detail_p_wine_38.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_wine_39.com")!=-1) {	

			url = "/sool/detail_p_wine_39.jsp";
			forward(req, resp, url);

			//Ȩ��Ǫ��----------------------------------------
		}else if(uri.indexOf("p_food_40.com")!=-1) {	

			url = "/sool/detail_p_food_40.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_food_41.com")!=-1) {	

			url = "/sool/detail_p_food_41.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_food_42.com")!=-1) {	

			url = "/sool/detail_p_food_42.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_food_43.com")!=-1) {	

			url = "/sool/detail_p_food_43.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("p_food_44.com")!=-1) {	

			url = "/sool/detail_p_food_44.jsp";
			forward(req, resp, url);	

		}else if(uri.indexOf("p_food_45.com")!=-1) {	

			url = "/sool/detail_p_food_45.jsp";
			forward(req, resp, url);

			//--------------------------------------------------
		}else if(uri.indexOf("logout.com")!=-1) {

			HttpSession session = req.getSession();

			session.removeAttribute("customInfos");
			session.invalidate();

			url = cp + "/homesool/main.com";
			resp.sendRedirect(url);


			//���ɸ�
			//�߰�--------------------------------------------------
		}else if(uri.indexOf("mak.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();




			int dataCount = dao1.getDataCount();
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			String prod_cate = "p_mak";

			List<SoolProdDTO> lists = dao1.getCateLists(prod_cate, start, end);

			String listUrl = cp + "/homesool/mak.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			//String p_mak = req.getParameter("prod_cate");					

			Iterator<SoolProdDTO> it = lists.iterator();

			//SoolProdDTO dto2 = new SoolProdDTO();

			while (it.hasNext()) {

				//dto2 = it.next();
				SoolProdDTO dto = it.next();			
			}

			url = "/sool/list_p_mak.jsp";
			forward(req, resp, url);

			//����
		}else if(uri.indexOf("soju.com")!=-1) {

			int dataCount = dao1.getDataCount();
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			String prod_cate = "p_soju";

			List<SoolProdDTO> lists = dao1.getCateLists(prod_cate, start, end);

			String listUrl = cp + "/homesool/soju.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			//String p_mak = req.getParameter("prod_cate");					

			Iterator<SoolProdDTO> it = lists.iterator();

			//SoolProdDTO dto2 = new SoolProdDTO();

			while (it.hasNext()) {

				//dto2 = it.next();
				SoolProdDTO dto = it.next();			
			}

			url = "/sool/list_p_soju.jsp";
			forward(req, resp, url);

			//����
		}else if(uri.indexOf("wine.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			int dataCount = dao1.getDataCount();
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			String prod_cate = "p_wine";

			List<SoolProdDTO> lists = dao1.getCateLists(prod_cate, start, end);

			String listUrl = cp + "/homesool/wine.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			//String p_mak = req.getParameter("prod_cate");					

			Iterator<SoolProdDTO> it = lists.iterator();

			//SoolProdDTO dto2 = new SoolProdDTO();

			while (it.hasNext()) {

				//dto2 = it.next();
				SoolProdDTO dto = it.next();			
			}

			url = "/sool/list_p_wine.jsp";
			forward(req, resp, url);

			//û��
		}else if(uri.indexOf("chung.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			int dataCount = dao1.getDataCount();
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			String prod_cate = "p_chung";

			List<SoolProdDTO> lists = dao1.getCateLists(prod_cate, start, end);

			String listUrl = cp + "/homesool/chung.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			//String p_mak = req.getParameter("prod_cate");					

			Iterator<SoolProdDTO> it = lists.iterator();

			//SoolProdDTO dto2 = new SoolProdDTO();

			while (it.hasNext()) {

				//dto2 = it.next();
				SoolProdDTO dto = it.next();			
			}

			url = "/sool/list_p_chung.jsp";
			forward(req, resp, url);

			//����
		}else if(uri.indexOf("food.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			int dataCount = dao1.getDataCount();
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;

			if(pageNum != null)
				currentPage = Integer.parseInt(pageNum);

			int numPerPage = 8;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			if(currentPage > totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1) * numPerPage + 1;
			int end = currentPage * numPerPage;

			String prod_cate = "p_food";

			List<SoolProdDTO> lists = dao1.getCateLists(prod_cate, start, end);

			String listUrl = cp + "/homesool/food.com";

			String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String imagePath = cp + "/hs/prod_if";

			req.setAttribute("lists", lists);
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("imagePath", imagePath);

			//String p_mak = req.getParameter("prod_cate");					

			Iterator<SoolProdDTO> it = lists.iterator();

			//SoolProdDTO dto2 = new SoolProdDTO();

			while (it.hasNext()) {

				//dto2 = it.next();
				SoolProdDTO dto = it.next();			
			}

			url = "/sool/list_p_food.jsp";
			forward(req, resp, url);


			//--------------------------------------------------
		}else if(uri.indexOf("detailP_ok.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();



			int prod_no = Integer.parseInt(req.getParameter("prod_no"));
			String prod_name = req.getParameter("prod_name");
			String prod_cate = req.getParameter("prod_cate");


			System.out.println(prod_no);
			System.out.println(prod_name);

			SoolProdDTO dto = dao1.getReadData(prod_no);

			HttpSession session1 = req.getSession();

			ProductInfos infop = new ProductInfos();


			infop.setProd_name(dto.getProd_name());
			infop.setProd_no(dto.getProd_no());

			session1.setAttribute("ProductInfos", infop);


			url = cp + "/homesool/" + prod_cate + "_" + prod_no +".com";
			resp.sendRedirect(url);



		}else if(uri.indexOf("basket.com")!=-1) {

			url = "/sool/basket.jsp";
			forward(req, resp, url);



		}else if(uri.indexOf("one_to_one.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");

			if(info == null) {

				url = "/sool/login.jsp";
				forward(req, resp, url);
				return;
			}





			url = "/sool/one_to_one.jsp";                        
			forward(req, resp, url);


		}else if(uri.indexOf("one_to_one2.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos info = (CustomInfos)session.getAttribute("customInfos");

			SoolBorderDTO dto = new SoolBorderDTO();

			int maxNum = dao2.getMaxNum();

			dto.setBor_no(maxNum+1);
			dto.setBor_subject(req.getParameter("bor_subject"));
			dto.setUser_id(req.getParameter("user_id"));
			dto.setBor_content(req.getParameter("bor_content"));
			dto.setBor_cate(req.getParameter("bor_cate"));

			dao2.insertData(dto);

			url = "/sool/one_to_one2.jsp";                        
			forward(req, resp, url);


		}else if(uri.indexOf("faq.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			url = "/sool/faq.jsp";                        
			forward(req, resp, url);


		}else if(uri.indexOf("delivery.com")!=-1) {

			HttpSession session = req.getSession();

			CustomInfos infos = new CustomInfos();

			url = "/sool/delivery_t.jsp";
			forward(req, resp, url);
		}









	}

}

