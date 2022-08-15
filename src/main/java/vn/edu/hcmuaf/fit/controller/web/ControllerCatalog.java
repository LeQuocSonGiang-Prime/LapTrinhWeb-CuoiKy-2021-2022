package vn.edu.hcmuaf.fit.controller.web;

import org.json.simple.JSONObject;
import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ControllerCatalog", value = "/danh-muc")
public class ControllerCatalog extends HttpServlet {
    @Inject
    private IHouseService houseService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String kindOfHouse = request.getParameter("kind-of-house");
        if (kindOfHouse == null || kindOfHouse.equals("")) {
            request.setAttribute("listHouse", houseService.select24Element(1));
            request.setAttribute("totalHouse", houseService.totalHouse());
        } else {
            request.setAttribute("listHouse", houseService.select24HouseByKind(Integer.parseInt(kindOfHouse), 1));
            request.setAttribute("typeOfHouse", kindOfHouse);
            request.setAttribute("totalHouse", houseService.countHouseByType(Integer.parseInt(kindOfHouse)));
        }
        request.getRequestDispatcher("/views/web/catalog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
