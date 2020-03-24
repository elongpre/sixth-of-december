package sixth_of_december;
import java.io.IOException;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "rsvp_submitted_servelet",
    urlPatterns = {"/rsvp_submitted"}
)
public class RSVPSubmittedServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

@Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {

	Key rsvp_key = KeyFactory.createKey("rsvp_key", "rsvp_datastore");
	Entity rsvp = new Entity("RSVP", rsvp_key);
	
	String guest_name;
    int guest_num = 1;
    while( (guest_name = request.getParameter("guest"+guest_num+"_name")) != null) {
      rsvp.setProperty("guest"+guest_num+"_name", guest_name);
      guest_num++;
    }
    rsvp.setProperty("5th", request.getParameter("5th"));
    rsvp.setProperty("6th", request.getParameter("6th"));
    rsvp.setProperty("7th", request.getParameter("7th"));
    rsvp.setProperty("8th", request.getParameter("8th"));
    rsvp.setProperty("9th", request.getParameter("9th"));
    rsvp.setProperty("NotAttending", request.getParameter("NotAttending"));
    rsvp.setProperty("additional_comments", request.getParameter("additional_comments"));
    
    DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
    datastore.put(rsvp);

	request.setAttribute("site_page", "rsvp");
	request.getRequestDispatcher("/WEB-INF/views/rsvp_submitted.jsp").forward(request, response);
  }
}