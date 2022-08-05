package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.model.BillModel;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IBillService;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ControllerDetail", value = "/chi-tiet")
public class ControllerDetail extends HttpServlet {

    @Inject
    private IBillService billService;
    @Inject
    private IHouseService houseService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HouseModel currentHouse = houseService.selectHouseById(request.getParameter("id_house")) ;
        request.setAttribute("currentHouse", currentHouse);
        List<BillModel> listBill = billService.findBillByHouse(request.getParameter("id_house"));
        request.setAttribute("listBill", listBill);
        List<HouseModel> listHouse = houseService.select4Element(2);
        request.setAttribute("listHouse", listHouse);
        request.getRequestDispatcher("/views/web/detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
