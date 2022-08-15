package vn.edu.hcmuaf.fit.controller.web;

import org.json.simple.JSONObject;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "SignIn", value = "/dang-nhap")
public class SignIn extends HttpServlet {
    @Inject
    private IUserService userService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter os = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       // response.sendRedirect("loginAdmin");
        JSONObject jsonOb = new JSONObject();
        UserModel user = userService.checkLogin(username, password);

        String msg;
        if (user != null) {
            msg = "1";
            jsonOb.put("msg", msg);
            // if user has full name
            if (user.getFullName() != null && !user.getFullName().trim().equals("")) {
                jsonOb.put("name", user.getFullName());
                jsonOb.put("avatar", user.getAvatar());
            } else {
                jsonOb.put("name", username);
            }
            os.print(jsonOb.toJSONString());
        } else {
            msg = "3";
            jsonOb.put("msg", msg);
            os.print(jsonOb.toJSONString());
        }
        os.flush();
        os.close();

    }

}
