package com.eagle.men_in_black.repository;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eagle.men_in_black.model.UserMypageDto;

@Repository
public class UserMypageDaoImpl implements UserMypageDao {

	private final String namespace="com.eagle.repository.mapper.UserMypage";

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public UserMypageDto do_search_point(String id) {
		String statement = namespace+".do_search_point";
		return sqlSession.selectOne(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_coupon(String id) {
		String statement = namespace+".do_search_coupon";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_buy(String id) {
		String statement = namespace+".do_search_buy";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_qna(String id) {
		String statement = namespace+".do_search_qna";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_basket(String id) {
		String statement = namespace+".do_search_basket";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_buylist(HashMap<String, String> map) {
		String statement = namespace+".do_search_buylist";
		return sqlSession.selectList(statement,map);
	}

	@Override
	public List<UserMypageDto> do_search_pointlist(HashMap<String, String> map) {
		String statement = namespace+".do_search_pointlist";
		return sqlSession.selectList(statement,map);
	}

	@Override
	public List<UserMypageDto> do_search_couponlist(HashMap<String, String> mapc) {
		String statement = namespace+".do_search_couponlist";
		return sqlSession.selectList(statement,mapc);
	}

	@Override
	public List<UserMypageDto> do_search_point5(String id) {
		String statement = namespace+".do_search_point5";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_basketlist(String id) {
		String statement = namespace+".do_search_basketlist";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_myboradreview(String id) {
		String statement = namespace+".do_search_myboradreview";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_myboradqna(String id) {
		String statement = namespace+".do_search_myboradqna";
		return sqlSession.selectList(statement,id);
	}

	@Override
	public List<UserMypageDto> do_search_reviewlist(HashMap<String, String> map) {
		String statement = namespace+".do_search_reviewlist";
		return sqlSession.selectList(statement,map);
	}


	@Override
	public List<UserMypageDto> do_search_qnalist(HashMap<String, String> map) {
		String statement = namespace+".do_search_qnalist";
		return sqlSession.selectList(statement,map);
	}


	@Override
	public void do_delete_basketlist(List<Integer> list){
		String statement = namespace+".do_delete_basketlist";
		 sqlSession.delete(statement,list);
	}

	@Override
	public List<UserMypageDto> do_search_goods(HashMap<String, Object> map) {
		String statement = namespace+".do_search_goods";
		return sqlSession.selectList(statement,map);
	}
}