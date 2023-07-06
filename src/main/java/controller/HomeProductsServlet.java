package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BO.CategoryBO;
import BO.ProductsBO;
import model.Category;
import model.Products;

/**
 * Servlet implementation class HomeProductsServlet
 */
public class HomeProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeProductsServlet() {
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
		ProductsBO p = new ProductsBO();
		CategoryBO c = new CategoryBO();
		String idLoaiSp = request.getParameter("id_category");
		String dientich = request.getParameter("dientich");
		String maylanh = request.getParameter("maylanh");
		String huong = request.getParameter("huong");
		String search = request.getParameter("search");
		String page = request.getParameter("page");
		String key = request.getParameter("key");
		String type = request.getParameter("type");
     
		ArrayList<Products> lstP = null;
		lstP = p.getListProducts();
		if (idLoaiSp != null && (dientich==null || huong ==null || maylanh==null)) {
			lstP = p.getProductsByCategory(idLoaiSp);
		}else if(idLoaiSp!=null && dientich!=null && maylanh!=null && huong!=null) {
			lstP=p.getProductsByCategory(idLoaiSp, dientich, maylanh, huong);
		}
		if (search != null) {
			lstP = p.getProductsByName(key);
		}
		if (page != null) {
			int number = Integer.parseInt(page);
			lstP = p.getProductPage(number);
		}else
		if("SP".equals(type)) {
			ArrayList<Products> list= new ArrayList<>();
			for (Products products : lstP) {
				
				Category ca= c.getCategoryByID(products.getId_loaiSanPham());
				if(ca!=null && "SP".equals(ca.getType())) {
					list.add(products);
				}
			};
			lstP=list;
		}
		ArrayList<Products> lstallProduct= p.getListProducts();
		ArrayList<Integer> list = p.getPage();
		if(dientich==null) {
			dientich="S1";
		}
		if(huong==null) {
			huong="H1";
		}
		if(idLoaiSp==null) {
			List<Category> cas=c.getListCategory();
			for(Category ca: cas){
				if(ca.getType().equals(type)) {
					idLoaiSp=ca.getId()+"";
					break;
				}
			}
			
		}
		
		request.setAttribute("TYPE", type);
		request.setAttribute("DT", dientich);
		request.setAttribute("H", huong);
		request.setAttribute("ML", maylanh);
		request.setAttribute("ID", idLoaiSp);

		request.setAttribute("page", list);
		request.setAttribute("lstProducts", lstP);
		request.setAttribute("listsC", lstallProduct);

		request.setAttribute("lstCategory", c.getListCategory());
		RequestDispatcher rd = request.getRequestDispatcher("shop.jsp");
		rd.forward(request, response);

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
