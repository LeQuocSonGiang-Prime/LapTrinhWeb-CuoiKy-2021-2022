package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "confirmSignUp", value = "/xac-nhan-dang-ky")
public class confirmSignUp extends HttpServlet {

    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Get email
        String email = request.getParameter("email");
        boolean userExists = userService.checkUserExist(email);
        PrintWriter print = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        if(userExists){
           userService.activateUser(email);
            print.println("<h2 style='color:green;'>Dang ky thanh cong</h2>");
        }else{
            print.println("<h2 style='color:green;'>Da say ra loi gi do, vui long dang ky lai</h2>");
        }






    }

}
