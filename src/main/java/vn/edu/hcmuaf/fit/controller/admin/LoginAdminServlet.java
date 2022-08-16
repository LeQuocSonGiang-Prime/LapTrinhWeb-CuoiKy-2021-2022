package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.AdminModel;
import vn.edu.hcmuaf.fit.service.IAdminService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginAdminServlet", value = "/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {

    @Inject
    private IAdminService adminService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        AdminModel admin = adminService.checkLogin(email, password);
        System.out.println(admin);
        if (admin == null) { // dang nhap sai
            request.setAttribute("msg", "dw");
            request.getRequestDispatcher("/views/admin/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);
            response.sendRedirect("admin-trang-chu");
        }
    }
}
