package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Random;

@WebServlet(name = "ControllerAddHouseServlet", value = "/admin-addHouse")
public class ControllerAddHouseServlet extends HttpServlet {
    @Inject
    private IHouseService houseService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.getRequestDispatcher("/views/admin/addHouse.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name-house");
        int type = Integer.parseInt(request.getParameter("type-house"));
        String tutorial = request.getParameter("tutorial-house");
        String address = request.getParameter("add-house");
        String forYou = request.getParameter("foryou-house");
        String detail = request.getParameter("detail-house");
        int price = Integer.parseInt(request.getParameter("price-house"));
        HouseModel newhouse = new HouseModel();

        newhouse.setName(name);
        newhouse.setId(createID());
        newhouse.setAddress(address);
        newhouse.setDetail(detail);
        newhouse.setTutorial(tutorial);
        newhouse.setPrice(price);
        newhouse.setForYou(forYou);
        newhouse.setType(type);
        houseService.addHouse(newhouse);
        request.getRequestDispatcher("/views/web/addHouse.jsp").forward(request, response);

    }

    public String createID() {
        byte[] arr = new byte[10];
        new Random().nextBytes(arr);
        String result = new String(arr, Charset.forName("UTF-8"));
        while (houseService.findHouseByID(result)) {
            new Random().nextBytes(arr);
            result = new String(arr, Charset.forName("UTF-8"));
        }
        System.out.println(result);
        return result;
    }

}
