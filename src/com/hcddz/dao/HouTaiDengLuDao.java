package com.hcddz.dao;

import java.util.Map;

import com.hcddz.entity.HouTaiDengLu;


/**
 * @作者：老鲁
 * @用途：后台登陆接口
 * @时间：2017年7月25日上午9:27:25
 */
public interface HouTaiDengLuDao {
	Map<String,Object> findZhangHaoAndPassword(HouTaiDengLu user);//查询帐号和密码是否匹配 
}
