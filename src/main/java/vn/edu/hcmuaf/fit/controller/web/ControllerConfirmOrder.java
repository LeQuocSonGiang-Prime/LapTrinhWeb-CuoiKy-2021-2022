package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.model.HouseModel;
import vn.edu.hcmuaf.fit.service.ICommentService;
import vn.edu.hcmuaf.fit.service.IHouseService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "ControllerConfirm", value = "/xac-nhan-dat-cho")
public class ControllerConfirmOrder extends HttpServlet {
    @Inject
    private IHouseService houseService;
    @Inject
    private ICommentService commentService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Date time_Checkin = new Date(request.getParameter("time-checkin"));
        Date time_Checkout = new Date(request.getParameter("time-checkout"));
        String id_house = request.getParameter("id_house");
        request.setAttribute("time-checkin", time_Checkin);
        request.setAttribute("time-checkout", time_Checkout);
        request.setAttribute("house",houseService.selectHouseById(id_house));
        request.setAttribute("totalComment", commentService.selectByHouse(id_house).size());


        request.getRequestDispatcher("/views/web/confirm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
