package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.AdminModel;
import vn.edu.hcmuaf.fit.service.IBillService;
import vn.edu.hcmuaf.fit.service.IHouseService;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin-trang-chu", value = "/admin-trang-chu")
public class ControllerAdminServlet extends HttpServlet {

    private AdminModel adminCurent;
    @Inject
    private IBillService billService;
    @Inject
    private IHouseService houseService;
    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setAttribute("adminCurrent", adminCurent);
        request.setAttribute("totalBill", billService.totalBill());
        request.setAttribute("totalHouse", houseService.totalHouse());
        request.setAttribute("totalUser", userService.totalUser());
        request.getRequestDispatcher("/views/admin/home.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public AdminModel getAdminCurent() {
        return adminCurent;
    }

    public void setAdminCurent(AdminModel adminCurent) {
        this.adminCurent = adminCurent;
    }
}
