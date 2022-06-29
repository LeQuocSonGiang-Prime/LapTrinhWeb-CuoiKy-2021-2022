package vn.edu.hcmuaf.fit.service.serviceimp;

import vn.edu.hcmuaf.fit.dao.IExperienceDAO;
import vn.edu.hcmuaf.fit.model.ExperienceModel;
import vn.edu.hcmuaf.fit.service.IExperienceService;

import javax.inject.Inject;
import java.util.List;

public class ExperienceServiceImp implements IExperienceService {

    @Inject
    private IExperienceDAO experienceDAO;

    @Override
    public List<ExperienceModel> findAll() {
        return experienceDAO.findAll();
    }
}
