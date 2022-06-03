package com.sool;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.SJDBConn;

public class BasketServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	protected void forward(HttpServletRequest req, HttpServletResponse resp,
			String url) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		
		Connection conn = SJDBConn.getConnection();
		BaskatDAO dao = new BaskatDAO(conn);
		
		String cp = req.getContextPath();
		String uri = req.getRequestURI();
		String url;
		
		// 파일 업로드 위치 지정
				String root = getServletContext().getRealPath("/");
				String path = root + File.separator + "pds" + File.separator+ "imageFile";
				
				File f = new File(path);
				
				// 파일 없으면 디렉토리 생성
				if (!f.exists()) {
					f.mkdirs();
				}
				
				
				if (uri.indexOf("cartList.do") != -1) {
					
					HttpSession session = req.getSession();
					SoolUserDTO dto= (SoolUserDTO) session.getAttribute("user_id");
					
					String user_id= dto.getUser_id();
					
					List<BasketDTO> lists = dao.getReadData(user_id);
					int totalItemCount = dao.getTotalItemCount(user_id);
					int totalItemPrice = dao.getTotalItemPrice(user_id);
					int totalItemCountYes = dao.getTotalItemCountyes(user_id);
					
					
					// 이미지파일경로(이거 안넣는다고 했던 것 같은데...?) 혹시 모르니 써보자
					String imagePath = cp + "/pds/imageFile";
					
					//삭제
					String deleteUrl = cp + "/basket/basketDelete_ok.do?productId=";
					String updateUrl = cp + "/basket/basketUpdated_ok.do?productId=";
					
					req.setAttribute("imagePath", imagePath);
					req.setAttribute("lists", lists);
					req.setAttribute("deleteUrl", deleteUrl);
					req.setAttribute("updateUrl", updateUrl);
					req.setAttribute("totalItemCount", totalItemCount);
					req.setAttribute("totalItemPrice", totalItemPrice);
					req.setAttribute("totalItemCountYes", totalItemCountYes);
					//project/cart/cartList.jsp 페이지로 포워드
					url = "/sool/basket/basketList.jsp";
					forward(req, resp, url);
				
				
				}else if (uri.indexOf("cartAdd_ok.do") != -1){
					
					//장바구니추가
					BasketDTO dto = new BasketDTO();
					HttpSession session = req.getSession();
					SoolUserDTO userdto = (SoolUserDTO) session.getAttribute("user_id");
					String user_id;
					int prod_no = Integer.parseInt(req.getParameter("prod_no"));
					String prod_name= req.getParameter("prod_name");
					
					if(userdto.getUser_id()!=null){
						user_id = userdto.getUser_id();
					}else{
						user_id = req.getParameter("user_id");
					}
					
					String param = "";
					
					//술이름 한글한글로...
					if(prod_name!=null && !prod_name.equals(null)){
						prod_name = URLDecoder.decode(prod_name, "UTF-8");				
					}
					
					//장바구니에 상품갯수 아이디에 따른
					int prod_quan = Integer.parseInt(req.getParameter("prod_quan"));
					
					//사용자id
					dto.setUser_id(user_id);
					
					//장바구니 수량증가
					if(dao.searchBeforeProductId(prod_no,user_id)==1){
						int addprod_quan = dao.getBasketItemCount(user_id, prod_no);
						dto.setProd_quan(prod_quan+prod_quan);
						dao.updateBasket(dto);
					}else{
						dao.insertBasketItem(dto);
					}
					
					if(prod_name!=null){
						param += "?prod_name=" + URLEncoder.encode(prod_name,"UTF-8");
					}
					
					url = "/sool/basket/basketList.jsp";
					forward(req, resp, url);
					
				}else if (uri.indexOf("basketAddFromList_ok.do") != -1){
					
					//리스트페이지에서 장바구니추가
					BasketDTO dto = new BasketDTO();
					HttpSession session = req.getSession();
					SoolUserDTO userdto = (SoolUserDTO) session.getAttribute("user_id");
					String user_id = userdto.getUser_id();
					int prod_no = Integer.parseInt(req.getParameter("prod_no"));
					String prod_name = req.getParameter("prod_name");
					
					String param = "";
					

					//상품명 한글디코딩
					if(prod_name!=null && !prod_name.equals(null)){
						prod_name = URLDecoder.decode(prod_name, "UTF-8");				
					}
					
					
					//장바구니에 담을 상품id의 주문갯수
					int prod_quan = Integer.parseInt(req.getParameter("prod_quan"));
					
					//사용자아이디...여기 서 검색해쪄염....
					dto.setUser_id("user_id");
					
					
					if(prod_name!=null){
						param += "?prod_name=" + URLEncoder.encode(prod_name,"UTF-8");

					}
					
	
					//동일  내용...성동일.... 성동일.. 퇴근짤...  있으면 수량증가
					if(dao.searchBeforeProductId(prod_no,user_id)==1){
						int addprod_quan = dao.getBasketItemCount(user_id, prod_no);
						dto.setProd_quan(prod_quan + addprod_quan);
						dao.updateBasket(dto);
					}else{
						dao.insertBasketItem(dto);
					}
					
					url = "/cart/cartList.do";//가상주소....인가 판단이... 잘 안가는데 
					forward(req, resp, url);
					
				}else if (uri.indexOf("cartDelete_ok.do") != -1){
					
					HttpSession session = req.getSession();
					SoolUserDTO userdto = (SoolUserDTO) session.getAttribute("user_id");

					int prod_id = Integer.parseInt(req.getParameter("prod_no"));
					String userId = userdto.getUser_id();
					
					//장바구니 삭제
					dao.deleteBasketItem(prod_id, userId);
					
					url = cp + "/cart/cartList.do";
					resp.sendRedirect(url);
					
					
				}else if (uri.indexOf("memberUpdated_ok.do") != -1){
					
					BasketDTO dto = new BasketDTO();
					HttpSession session = req.getSession();
					SoolUserDTO userdto = (SoolUserDTO) session.getAttribute("user_id");
					int prod_no = Integer.parseInt(req.getParameter("prod_no"));
					String user_id = userdto.getUser_id();
					
					dto.setProd_no(Integer.parseInt("prod_no"));
					dto.setUser_id(user_id);
					dto.setProd_price(Integer.parseInt(req.getParameter("prod_price")));
					dto.setProd_quan(Integer.parseInt(req.getParameter("prod_quan")));
					
					//장바구니 수정
					//동일 userId,productId로 장바구니 내용이 있으면 수량수정, 없으면 추가등록
					if(dao.searchBeforeProductId(prod_no,user_id)==1){
						dao.updateBasket(dto);
					}else{
						dao.insertBasketItem(dto);
					}
					
					url = cp + "/cart/cartList.do";
					resp.sendRedirect(url);
					
					
				}else if (uri.indexOf("orderSelectToYes_ok.do")!=-1){

					//주문여부변경 
					HttpSession session = req.getSession();
					SoolUserDTO userdto = (SoolUserDTO) session.getAttribute("user_id");
					
					int prod_id = Integer.parseInt(req.getParameter("prod_no")) ;
					String user_id = userdto.getUser_id();
					
					//OrderSelect no → yes
					dao.changeOrderSelectYes(prod_id,user_id);		
					
					url = cp + "/sool/basket/cartList.do";
					resp.sendRedirect(url);
					
				}else if (uri.indexOf("cartAdd_directOrder.do") != -1){
					
					//장바구니추가
					BasketDTO dto = new BasketDTO();
					HttpSession session = req.getSession();
					SoolUserDTO userdto = (SoolUserDTO) session.getAttribute("user_id");
					String user_id;
					int prod_no = Integer.parseInt(req.getParameter("prod_no"));
					String prod_name = req.getParameter("prod_name");

					if(userdto.getUser_id()!=null){
						user_id = userdto.getUser_id();
					}else{
						user_id = req.getParameter("user_id");
					}
					
					String param = "";
					
					//상품명 상품옵션 한글디코딩
					if(prod_name!=null && !prod_name.equals(null)){
						prod_name = URLDecoder.decode(prod_name, "UTF-8");				
					}

					
					//장바구니에 담을 상품id의 주문갯수
					int prod_quan = Integer.parseInt(req.getParameter("prod_quan"));
					
					//사용자id
					dto.setUser_id("user_id");
					
					//동일 userId,productId로 장바구니 내용이 있으면 수량증가
					if(dao.searchBeforeProductId(prod_no,user_id)==1){
						int addprod_quan = dao.getBasketItemCount(user_id, prod_no);
						dto.setProd_quan(prod_quan + addprod_quan);
						dao.updateBasket(dto);
					}else{
						dao.insertBasketItem(dto);
					}
					
					if(prod_name!=null){
						param += "?prod_name=" + URLEncoder.encode(prod_name,"UTF-8");
					}
					
					url = "/order/orderList.do";
					forward(req, resp, url);
					
				}

			}
			

		}
