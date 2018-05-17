package com.pt.dao;

import java.util.List;

import com.pt.vo.Student_evaluation_results;

public interface SERDao {
public boolean addSER(Student_evaluation_results ser);
public List<Student_evaluation_results> findSER(int tid);
}
