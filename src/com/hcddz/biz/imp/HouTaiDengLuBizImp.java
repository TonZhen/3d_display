package com.hcddz.biz.imp;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hcddz.biz.HouTaiDengLuBiz;
import com.hcddz.dao.HouTaiDengLuDao;
import com.hcddz.entity.HouTaiDengLu;

@Service
public class HouTaiDengLuBizImp implements HouTaiDengLuBiz {
		@Resource
		private HouTaiDengLuDao denglu;
		public HouTaiDengLuDao getDenglu() {
				return denglu;
			}
	
		public void setDenglu(HouTaiDengLuDao denglu) {
				this.denglu = denglu;
			}
/**
 * 验证后台登陆密码
 * */
	@Override
	public Map<String, Object> findZhangHaoAndPassword(HouTaiDengLu user) {
		return denglu.findZhangHaoAndPassword(user);
	}

}
