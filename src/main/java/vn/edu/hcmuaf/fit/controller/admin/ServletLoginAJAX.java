package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.AdminModel;
import vn.edu.hcmuaf.fit.service.IAdminService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletLogin", value = "/servletLogin")
public class ServletLoginAJAX extends HttpServlet {
    @Inject
    private IAdminService adminService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        PrintWriter send = response.getWriter();
        String password = request.getParameter("password");
        if(adminService.checkLogin(email,password) == null){ // dang nhap sai
            send.print("1");
        }else{
            send.print("2");
            try{
                request.getRequestDispatcher("/views/admin/home.jsp").forward(request, response);
                System.out.println("success");
            }catch(Exception e){
                e.printStackTrace();
            }

        }
        response.sendRedirect("admin-trang-chu");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
