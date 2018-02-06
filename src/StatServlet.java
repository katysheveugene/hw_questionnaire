
import stat.Statisctic;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StatServlet", urlPatterns = "/stat")
public class StatServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String[] values = getValues(req);
        req.getSession().setAttribute("isSubmitted",true);
        Statisctic.update(values);
        resp.sendRedirect("pages/questionnaire.jsp");

    }


    private String[] getValues(HttpServletRequest request){
        String[] values = {
                request.getParameter("question1"),
                request.getParameter("question2"),
                request.getParameter("question3"),
                request.getParameter("question4"),
                request.getParameter("question5"),
        };

        return values;
    }

}
