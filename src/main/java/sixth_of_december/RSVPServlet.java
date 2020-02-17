package sixth_of_december;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "rsvp_servelet",
    urlPatterns = {"/rsvp"}
)
public class RSVPServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

@Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
	request.setAttribute("site_page", "rsvp");
	request.getRequestDispatcher("/WEB-INF/views/rsvp.jsp").forward(request, response);
  }
}