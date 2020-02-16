package sixth_of_december;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "schedule_servelet",
    urlPatterns = {"/schedule"}
)
public class ScheduleServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

@Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
	request.setAttribute("site_page", "schedule");
	request.getRequestDispatcher("/WEB-INF/views/schedule.jsp").forward(request, response);
  }
}