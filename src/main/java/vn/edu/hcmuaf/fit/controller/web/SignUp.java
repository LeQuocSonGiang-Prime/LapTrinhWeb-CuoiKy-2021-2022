package vn.edu.hcmuaf.fit.controller.web;

import org.json.simple.JSONObject;
import vn.edu.hcmuaf.fit.service.IUserService;

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
        PrintWriter os = response.getWriter();
        JSONObject jsonOb = new JSONObject();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        boolean userExist = userService.checkUserExist(username);
        String msg = null;
        if(userExist){
            //user is exist
            msg = "1";
            jsonOb.put("msg", msg);
        }else{
            msg = "2";
            jsonOb.put("msg", msg);
        }
        os.print(jsonOb);
        os.flush();
        os.close();
    }
}
