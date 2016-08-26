package week6;

import java.io.IOException;
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
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int presidentNumber = Integer.parseInt(request.getParameter("presidentNumber"));
		request.setAttribute("presidentNumber", presidentNumber);
		request.setAttribute("presidents", new PresidentDAO().getPresidents());
		getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
