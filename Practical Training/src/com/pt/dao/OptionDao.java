package com.pt.dao;

import java.util.List;

import com.pt.vo.Option;

public interface OptionDao {
public boolean addOption(Option o);
public List<Option> findO(int iid);
public boolean updateOption(Option o);
public List<Option> findAllO();
}
