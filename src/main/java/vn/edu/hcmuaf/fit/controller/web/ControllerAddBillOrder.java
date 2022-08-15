package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.IBillDAO;
import vn.edu.hcmuaf.fit.model.BillModel;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.charset.Charset;
import java.sql.Date;
import java.util.Random;

@WebServlet(name = "ControllerAddBillOrder", value = "/ControllerAddBillOrder")
public class ControllerAddBillOrder extends HttpServlet {
    @Inject
    private IBillDAO billDAO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String id_house = request.getParameter("house");
        String id_user = request.getParameter("user");
        String time_checkin = request.getParameter("time-checkin");
        String time_checkout = request.getParameter("time-checkout");
        java.util.Date time_checkin_util =  new  java.util.Date(time_checkin);
        java.util.Date time_checkout_util =  new  java.util.Date(time_checkout);

        int price = Integer.parseInt(request.getParameter("price"));
        java.util.Date time_order = new  java.util.Date();
        billDAO.addBill(createID(), id_house, id_user, new Date(time_checkin_util.getTime()), new Date(time_checkout_util.getTime()), new Date(time_order.getTime()), price);

    }

    public String createID() {
        byte[] arr = new byte[10];
        new Random().nextBytes(arr);
        String result = new String(arr, Charset.forName("UTF-8"));
//        while (checkExistImage(result)) {
//            new Random().nextBytes(arr);
//            result = new String(arr, Charset.forName("UTF-8"));
//        }
        System.out.println(result);
        return result;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
