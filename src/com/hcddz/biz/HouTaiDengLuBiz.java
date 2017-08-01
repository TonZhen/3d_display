package com.hcddz.biz;

import java.util.Map;

import com.hcddz.entity.HouTaiDengLu;

/**
 * @作者：老鲁
 * @用途：后台登陆
 * @时间：2017年7月25日上午10:02:51
 */
public interface HouTaiDengLuBiz {
	Map<String,Object> findZhangHaoAndPassword(HouTaiDengLu user);//查询帐号和密码是否匹配 
}
