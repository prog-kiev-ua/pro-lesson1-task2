package ua.kovalev.prolesson1task2;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(
        value = "/questionnaire",
        initParams =
        {
                @WebInitParam(name = "compilerSourceVM", value = "17"),
                @WebInitParam(name = "compilerTargetVM", value = "17")
        }
)
public class QuestionnaireServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String sex = request.getParameter("sex");
        String age = request.getParameter("age");
        HttpSession httpSession = request.getSession(true);
        httpSession.setAttribute("sex", sex);
        httpSession.setAttribute("age", age);
        response.sendRedirect("questionnaire.jsp");
    }
}