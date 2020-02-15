package sixth_of_december;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "landing_servelet",
    urlPatterns = {"/landing"}
)
public class LandingServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

@Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
	request.setAttribute("site_page", "landing");
	request.getRequestDispatcher("/WEB-INF/views/landing.jsp").forward(request, response);
  }
}