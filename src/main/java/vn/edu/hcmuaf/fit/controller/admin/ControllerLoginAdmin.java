package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.AdminModel;
import vn.edu.hcmuaf.fit.service.IAdminService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "loginAdmin", value = "/loginAdmin")
public class ControllerLoginAdmin extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setAttribute("msg", null);
        request.getRequestDispatcher("/views/admin/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setAttribute("msg", null);

        request.getRequestDispatcher("/views/admin/login.jsp").forward(request, response);
    }
}
