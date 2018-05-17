package com.pt.dao;

import java.util.List;

import com.pt.vo.Teacher_evaluation_results;

public interface TERDao {
public boolean addTER(Teacher_evaluation_results ter);
public List<Teacher_evaluation_results> findTER(String jobid);
}
