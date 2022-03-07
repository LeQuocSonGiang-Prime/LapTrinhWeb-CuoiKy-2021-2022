package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ControllerCatalog", value = "/danh-muc")
public class ControllerCatalog extends HttpServlet {
    @Inject
    private IHouseService houseService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HouseModel houseModel = new HouseModel();
        houseModel.setListResult(houseService.selectAll());
        request.setAttribute("model", houseModel);



        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("/views/web/catalog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
