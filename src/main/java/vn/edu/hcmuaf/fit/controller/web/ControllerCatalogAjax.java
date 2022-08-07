package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.StringTokenizer;

@WebServlet(name = "ControllerCatalogAjax", value = "/ControllerCatalogAjax")
public class ControllerCatalogAjax extends HttpServlet {
    @Inject
    private IHouseService houseService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ipageNumber = Integer.parseInt(request.getParameter("currentPage"));
        String typeOfHouse = request.getParameter("type-of-house");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<HouseModel> listHouse;
        if (typeOfHouse == null) {
            listHouse = houseService.select24Element(ipageNumber);
        } else {
            listHouse = houseService.selectHouseByKind(Integer.parseInt(typeOfHouse), ipageNumber);
        }
        PrintWriter out = response.getWriter();
        String data = "";
        for (HouseModel h : listHouse) {
            StringTokenizer stk = new StringTokenizer(h.getDetail(), ","); // error nam ngay day
            data += "<div class=\"col l-4 m-6 c-12 buy-list\" id=\"house-item\" data-aos=\"zoom-in-up\" data-aos-duration=\"1000\">\n" +
                    "                                <a class=\"catalog-singer-link-a\" href=\"${pageContext.request.contextPath}/chi-tiet\">\n" +
                    "                                    <img src=\"" + h.getImage().get(0) + "\" alt=\"\" class=\"buy-img\">\n" +
                    "                                    <h6 class=\"buy-item-price\" style=\"--h:#74b9ff\">" + h.getPrice() + "đ / Ngày</h6>\n" +
                    "                                    <div class=\"buy-info-item\">\n" +
                    "                                        <h5 class=\"buy-item-name\">" + h.getName() + "</h5>\n" +
                    "                                        <h6>" + h.getAddress() + "</h6>\n" +
                    "                                        <ul class=\"buy-item-list\">\n" +
                    "                                            <li class=\"list-room\">" + stk.nextToken() + "</li>\n" +
                    "                                            <li class=\"list-room\">" + stk.nextToken() + "</li>\n" +
                    "                                            <li class=\"list-room\">" + stk.nextToken() + "</li>\n" +
                    "                                        </ul>\n" +
                    "                                        <p class=\"buy-text\">" + h.getTutorial() + "</p>\n" +
                    "                                    </div>\n" +
                    "                                </a>\n" +
                    "                            </div>";
        }
        out.print(data);
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
