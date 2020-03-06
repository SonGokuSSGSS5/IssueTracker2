package com.cts.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.model.RaiseIssueBean;

@Repository
public interface raiseissuedao extends JpaRepository<RaiseIssueBean	, Integer>{

}
