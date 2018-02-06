import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "AuthenticationServlet",urlPatterns = "/authentication")
public class AuthenticationServlet extends HttpServlet {

    private static final String USER_LOGIN ="admin";
    private static final String USER_PASS ="admin";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String login = req.getParameter("username").trim();
        String psswd = req.getParameter("password").trim();

        HttpSession session = req.getSession();

        if (USER_LOGIN.equalsIgnoreCase(login) &&
                (USER_PASS.equals(psswd))) {

            session.setAttribute("login", login);
            resp.sendRedirect("pages/questionnaire.jsp");

        } else {
            session.setAttribute("printError", true);
            resp.sendRedirect("/pages/auth.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        req.getSession().invalidate();
        resp.sendRedirect("/pages/auth.jsp");
    }
}
