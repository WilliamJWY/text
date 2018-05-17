package com.pt.dao;

import java.util.List;

import com.pt.vo.Index_c;
import com.pt.vo.Index_p;

public interface IndexDao {
public boolean addIndex(Index_c i);
public boolean addIndexP(Index_p ip);
public boolean delIndex_c(int iid);
public List<Index_p> findAllP();
public List<Index_c> findC();
public List<Index_c> findOC(int rid);
}
