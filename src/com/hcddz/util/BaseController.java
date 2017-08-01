package com.hcddz.util;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.hcddz.biz.HouTaiDengLuBiz;

/**
 * 转JSON公用工具类
 * @author 老鲁
 */

@Controller
public class BaseController {
	@Resource
	private HouTaiDengLuBiz rb;
	
	
	
	public HouTaiDengLuBiz getRb() {
		return rb;
	}

	public void setRb(HouTaiDengLuBiz rb) {
		this.rb = rb;
	}

	public static void transForJson(Object obj, HttpServletResponse response) {
		String jsonString = JSON.toJSONStringWithDateFormat(obj, "yyyy-MM-dd");
		response.setContentType("application/json;charset=utf-8");
		try {
			response.getWriter().write(jsonString);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
/*
	public void UpUserSession(Integer userregid, HttpSession session) {
		Map findUserById = rb.findUserById(userregid);
		session.setAttribute("user", findUserById);
	}*/
}
