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
	int presidentNumber;

	public PresidentServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("presidentNumber") != null) {
			presidentNumber = Integer.parseInt(request.getParameter("presidentNumber"));
		} else {
			presidentNumber = 1;
		}

		System.out.println(presidentNumber);

		if (presidentNumber > 44)
			presidentNumber = 1;
		if (presidentNumber < 1)
			presidentNumber = 44;

		request.setAttribute("presidentNumber", presidentNumber);
		Map<Integer, President> presidents = new PresidentDAO(getServletContext()).getPresidents();
		President selectedPresident = presidents.get(presidentNumber);
		System.out.println(selectedPresident);
		request.setAttribute("selectedPresident", selectedPresident);
		getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
