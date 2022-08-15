package vn.edu.hcmuaf.fit.controller.web;

import org.json.simple.JSONObject;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IUserService;
import vn.edu.hcmuaf.fit.service.SendMail;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "dang-ky", value = "/dang-ky")
public class SignUp extends HttpServlet {
    @Inject
    private IUserService userService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter os = response.getWriter();
        JSONObject jsonOb = new JSONObject();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String fullname = request.getParameter("fullname");
        boolean userExist = userService.checkUserExist(email);
        String msg = null;
        if (userExist) {
            //user is exist
            msg = "1";
            jsonOb.put("msg", msg);
        } else {
            msg = "2";
            SendMail sendMail = new SendMail();
            sendMail.sendMailLogin(email);
            UserModel user = new UserModel(username, password, email, fullname);
            userService.insertUser(username, password, email, fullname);
            jsonOb.put("msg", msg);
        }
        os.print(jsonOb);
        os.flush();
        os.close();
    }
}
