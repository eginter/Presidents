package week6;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PresidentServlet")
public class PresidentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PresidentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int presidentNumber;
		if (request.getParameter("presidentNumber") == null) {
			presidentNumber = Integer.parseInt(request.getParameter("presidentNumber"));
		} else {
			presidentNumber = 1;
		}
		request.setAttribute("presidentNumber", presidentNumber);
		Map<Integer, President> presidents = new PresidentDAO(getServletContext()).getPresidents();
		President selectedPresident = presidents.get(presidentNumber);
		System.out.println(selectedPresident);
		request.setAttribute("selectedPresident", selectedPresident);
		getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);

		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// HttpSession session = request.getSession();
		// if (session.getAttribute("presidents") == null){
		// // first time make president map
		// session.setAttribute("presidents" , new
		// PresidentDAO().getPresidents());
		//
		// }
		//
		// request.getRequestDispatcher("/results.jsp").forward(request,
		// response);
		//
		doGet(request, response);
	}

}
