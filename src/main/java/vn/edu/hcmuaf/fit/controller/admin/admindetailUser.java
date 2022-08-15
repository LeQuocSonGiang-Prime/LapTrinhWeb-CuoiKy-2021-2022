package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IBillService;
import vn.edu.hcmuaf.fit.service.IUserService;
import vn.edu.hcmuaf.fit.service.serviceimp.UserServiceImp;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admin-detailUser", value = "/admin-detailUser")
public class admindetailUser extends HttpServlet {
    @Inject
    private IUserService userService;

    @Inject
    private IBillService iBillService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String id_user = request.getParameter("id_user");
        UserModel userModel = userService.selectById("USER000001");
        request.setAttribute("user", userModel);

        List<BillModel> listBill = iBillService.findBillByUser("USER000001");
        request.setAttribute("listBill", listBill);
        request.getRequestDispatcher("/views/admin/thongTinUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
