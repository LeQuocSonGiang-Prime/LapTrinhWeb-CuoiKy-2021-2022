package vn.edu.hcmuaf.fit.controller.web;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.service.IUserService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet(name = "SignIn", value = "/dang-nhap")
public class SignIn extends HttpServlet {
    @Inject
    private IUserService userService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter os = response.getWriter();
        Connection connection;
        PreparedStatement stm;
        ResultSet rs;
        JSONArray list = new JSONArray();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        JSONObject jsonOb = new JSONObject();
        UserModel checkSignIn = userService.checkLogin(username,password);
        String msg ;
        if(checkSignIn != null){
            msg = "1";
            jsonOb.put("msg", msg );
            os.print(jsonOb.toJSONString());
        }else{
            msg = "3";
            jsonOb.put("msg", msg );
            os.print(jsonOb.toJSONString());
        }
        os.flush();
        os.close();
    }


}
