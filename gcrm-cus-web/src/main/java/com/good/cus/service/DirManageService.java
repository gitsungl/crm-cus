package com.good.cus.service;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import com.good.sys.ServiceException;

public interface DirManageService {

	public List<String> performance(String staffId) throws ServiceException;

	public Map<String, List<String>> perfRanking(String staffId) throws ServiceException;

	public List<BigDecimal> unfinished(String staffId) throws ServiceException;

	public List<Map<String, String>> pubDpsChg(String staffId) throws ServiceException;

	public List<Map<String, String>> pubLoanChg(String staffId) throws ServiceException;

	public List<List<String>> PubVifyListPoForTable(String createUser) throws ServiceException, ParseException;

	public List<String> message(String staffId) throws ServiceException;

}
