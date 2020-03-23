package sixth_of_december;
import java.io.IOException;

import java.util.List;
import java.util.ArrayList;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "guest_list_servelet",
    urlPatterns = {"/hidden_guest_list"}
)
public class GuestListServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

@Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
	
    DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	Key rsvp_key = KeyFactory.createKey("rsvp_key", "rsvp_datastore");
	Query query = new Query("RSVP", rsvp_key);
	List<Entity> rsvp_list = datastore.prepare(query).asList(FetchOptions.Builder.withDefaults());
	
	List<String> guest_list = new ArrayList<String>();
    for(Entity rsvp : rsvp_list) {
      String entry = (String)rsvp.getProperty("guest1_name");
      entry += ","+(String)rsvp.getProperty("5th");
      entry += ","+(String)rsvp.getProperty("6th");
      entry += ","+(String)rsvp.getProperty("7th");
      entry += ","+(String)rsvp.getProperty("8th");
      entry += ","+(String)rsvp.getProperty("9th");
      entry += ","+(String)rsvp.getProperty("additional_comments");
      entry += ","+(String)rsvp.getProperty("guest1_name");
      entry += ","+(String)rsvp.getProperty("guest2_name");
      entry += ","+(String)rsvp.getProperty("guest3_name");
      entry += ","+(String)rsvp.getProperty("guest4_name");
      entry += ","+(String)rsvp.getProperty("guest5_name");
      entry += ","+(String)rsvp.getProperty("guest6_name");
      entry += ","+(String)rsvp.getProperty("guest7_name");
      entry += ","+(String)rsvp.getProperty("guest8_name");
      entry += ","+(String)rsvp.getProperty("guest9_name");
      entry += ","+(String)rsvp.getProperty("guest10_name");
      entry += ","+(String)rsvp.getProperty("guest11_name");
      entry += ","+(String)rsvp.getProperty("guest12_name");
      entry += ","+(String)rsvp.getProperty("guest13_name");
      entry += ","+(String)rsvp.getProperty("guest14_name");
      entry += ","+(String)rsvp.getProperty("guest15_name");
      guest_list.add(entry);
    }

    request.setAttribute("guest_list", guest_list);
	request.setAttribute("site_page", "hidden");
	request.getRequestDispatcher("/WEB-INF/views/guest_list.jsp").forward(request, response);
  }
}