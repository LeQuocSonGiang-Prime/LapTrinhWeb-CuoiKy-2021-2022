package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.ExperienceModel;

import java.util.List;

public interface IExperienceDAO extends IGenericDAO<ExperienceModel> {

    List<ExperienceModel> findAll();

}
