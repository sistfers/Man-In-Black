package com.eagle.men_in_black.repository;

import java.util.HashMap;
import java.util.List;

import com.eagle.men_in_black.model.CeoMypageDto;

public interface CeoMypageDao {
	public List<CeoMypageDto> do_ceomypage_main(HashMap<String, String> map);
}
