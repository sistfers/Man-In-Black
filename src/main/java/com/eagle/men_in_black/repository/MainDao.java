package com.eagle.men_in_black.repository;

import com.eagle.men_in_black.model.MainDto;

public interface MainDao {
	//로그인
	public MainDto do_search_pw(String id);
}
