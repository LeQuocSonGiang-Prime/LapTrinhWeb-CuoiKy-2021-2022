package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.AdminModel;
import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "admin-trang-chu", value = "/admin-trang-chu")
public class ControllerAdminServlet extends HttpServlet {

    private AdminModel adminCurrent;
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

        BillModel billModel = new BillModel();
        billModel.setTotalBill(billService.totalBill());
        billModel.setListNewBill(billService.findAllBill());
        UserModel.setTotalUser(userService.totalUser());
        HouseModel.setTotalHouse( houseService.totalHouse());
        request.setAttribute("bill", billModel);
        request.setAttribute("user", new UserModel());
        request.setAttribute("listHouse", HouseModel.getListResult());
        request.setAttribute("adminCurrent", adminCurrent);
        List<HouseModel> listHouse = HouseModel.getListResult();
        List<HouseModel> listAllHouse = houseService.selectAll();

        System.out.println(listAllHouse.removeAll(listHouse));
        listAllHouse.addAll(listHouse);
        HouseModel.setListResult(listAllHouse);
        request.getRequestDispatcher("/views/admin/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public AdminModel getAdminCurent() {
        return adminCurrent;
    }

    public void setAdminCurent(AdminModel adminCurent) {
        this.adminCurrent = adminCurent;
    }
}
