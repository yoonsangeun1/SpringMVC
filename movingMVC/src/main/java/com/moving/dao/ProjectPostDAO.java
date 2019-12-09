package com.moving.dao;

import com.moving.domain.ProjectPostVO;

public interface ProjectPostDAO {

	ProjectPostVO selectprojectInfo(int id);

	void updateHit(int id);

	void selectLeftLimit(int id);

}
