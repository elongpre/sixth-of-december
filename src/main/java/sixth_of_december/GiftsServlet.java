package sixth_of_december;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "gifts_servelet",
    urlPatterns = {"/gifts"}
)
public class GiftsServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

@Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
	request.setAttribute("site_page", "gifts");
	request.getRequestDispatcher("/WEB-INF/views/gifts.jsp").forward(request, response);
  }
}