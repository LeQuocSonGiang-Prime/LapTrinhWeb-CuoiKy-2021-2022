package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;
import vn.edu.hcmuaf.fit.service.serviceimp.HouseServiceImp;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ControllerDetailHouseServlet", value = "/admin-detail-house")
public class ControllerDetailHouseServlet extends HttpServlet {

    @Inject
    private IHouseService houseService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HouseModel currentHouse = houseService.selectHouseById(request.getParameter("id_house"));
        request.setAttribute("currentHouse", currentHouse);
        request.getRequestDispatcher("/views/admin/detailHouse.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
