package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.service.IAdminService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "loginAdmin", value = "/loginAdmin")
public class ControllerLoginAdmin extends HttpServlet {
    @Inject
    private IAdminService adminService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email != null && password != null) {
            PrintWriter send = response.getWriter();
            if (adminService.checkLogin(email, password) == null) { // dang nhap sai
                send.print("1");
                send.close();
            } else {
                send.print("2");
                send.close();
                System.out.println("success");
                response.sendRedirect("admin-trang-chu");
                return;
            }
        } else {
            request.getRequestDispatcher("/views/admin/login.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
