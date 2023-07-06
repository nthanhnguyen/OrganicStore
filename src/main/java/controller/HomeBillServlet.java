package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AddressDAO;
import dao.CartDAO;
import dao.SendMail;
import model.Bills;
import model.BillsDetail;
import model.Citys;
import model.District;
import model.Email;
import model.Items;
import model.Users;
import model.Ward;

/**
 * Servlet implementation class HomeBillServlet
 */
public class HomeBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeBillServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		AddressDAO addressDAO = new AddressDAO();
		HttpSession session = request.getSession();
		String status = request.getParameter("status");

		// Thông tin của hóa đơn
		Users user = (Users) session.getAttribute("uslogin");

		String user_name = request.getParameter("user-name");
		String town_ward = request.getParameter("town_ward");
		String tp = request.getParameter("country");
		String qh = request.getParameter("district");
		String px = request.getParameter("town_ward");

		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String note = request.getParameter("note");
		Citys citys = addressDAO.getCitys(Long.parseLong(tp));
		District district = addressDAO.getDistrict(Long.parseLong(qh));
		String diachi = citys.getTen() + "/" + district.getTen() + "/" + px + "/" + address;
		CartDAO dao = new CartDAO();
		switch (status) {
		case "addbill":
			if (note == null) {
				note = "";
			}
			CartDAO cart = (CartDAO) session.getAttribute("cart");

			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date();
			Bills bill = new Bills();
			bill.setDiaChi(diachi);
			bill.setSoDienThoai(phone);
			bill.setEmail(email);
			bill.setGhiChu(note);
			bill.setHoTen(user_name);
			bill.setNgayDat(dateFormat.format(date));
			bill.setSoNha(town_ward);
			bill.setTrangThai(0);
			String total = cart.totalCart();
			bill.setTotal(total);
			Long id_bill;
			try {
				dao.addBill(bill);
				if (dao.selectBills().size() != 0) {
					int max = dao.selectBills().size();
					id_bill = dao.selectBills().get(max - 1).getId();
				} else {
					id_bill = (long) 0;
				}
				for (Entry<Long, Items> list : cart.getCartItems().entrySet()) {
					BillsDetail billdetail = new BillsDetail();
					billdetail.setId_hoaDon(id_bill);
					billdetail.setId_sanPham(list.getValue().getProducts().getId());
					billdetail.setSoLuong(list.getValue().getQuantity());
					dao.addBillDetail(billdetail);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


			Email emailSend =new Email();
			emailSend.setFrom("ntnguyen10222002@gmail.com"); //chinh lai email quan tri tai day [chu y dung email con hoat dong]
			emailSend.setFromPassword("duaupdovtavrbuic"); //mat khau email tren
			emailSend.setTo(email);
			emailSend.setSubject("Đặt hàng thành công tại Ogani");
			StringBuilder sb = new StringBuilder();
			sb.append("Xin chào ").append(user_name).append("<br>");
			sb.append("Chúng tôi đã nhận được yêu cầu trả lại của bạn. Cảm ơn bạn đã cung cấp thông tin! <br> ");
			/*
			 * sb.append("Địa chỉ giao hàng là: <b>").append(diachi).append(" </b> <br>");
			 */
			sb.append("Phương thức thanh toán: cod <br>");
			sb.append("Số điện thoại khi nhận hàng của quý khách là: <b>").append(phone).append(" </b> <br>");
	
			sb.append("Tong Tien: ").append(total).append("VNĐ").append("<br>");
			sb.append("Cảm ơn quý khác đã đặt hàng tại Ogani!");
			/* sb.append("Chu cua hang"); */
			
			emailSend.setContent(sb.toString());
			try {
				SendMail.send(emailSend);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			String tb = "Đặt hàng thành công, mời bạn tiếp tục mua sắm!";
			session.setAttribute("paid", tb);
			response.sendRedirect("shoping-cart.jsp");
			break;
		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
