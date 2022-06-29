package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.model.ExperienceModel;
import vn.edu.hcmuaf.fit.service.IExperienceService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ControllerExperience", value = "/trai-nghiem")
public class ControllerExperience extends HttpServlet {
    @Inject
    private IExperienceService experienceService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<ExperienceModel> listExperience = experienceService.findAll();
        request.setAttribute("listExperience",listExperience );
        request.getRequestDispatcher("/views/web/experience.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
