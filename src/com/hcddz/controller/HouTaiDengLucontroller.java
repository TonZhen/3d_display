package com.hcddz.controller;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hcddz.biz.HouTaiDengLuBiz;
import com.hcddz.entity.HouTaiDengLu;
import com.hcddz.util.BaseController;


/**
 * @作者：老鲁
 * @用途：后台登录
 * @时间：2017年7月25日上午9:24:55
 */
@Controller
@RequestMapping("/houdenglu")
public class HouTaiDengLucontroller extends BaseController{
		@Resource
		private HouTaiDengLuBiz denglu;
		public HouTaiDengLuBiz getDenglu() {
			return denglu;
		}

		public void setDenglu(HouTaiDengLuBiz denglu) {
			this.denglu = denglu;
		}

	/**
	 * 测试跳转后台登陆的
	 * */	
	@RequestMapping("/houtaidenglu")
	public String findAllGoods() {
		return "login";
	}
	/**
	 * @描述 验证账号和密码是否匹配
	 * @作者 老鲁
	 */
	@RequestMapping("/{username}/{password}/userLogin")
	public void userLogin( HouTaiDengLu user,HttpServletResponse response,HttpSession session){
		Map<String, Object> findZhangHaoAndPassword = denglu.findZhangHaoAndPassword(user);
		session.setAttribute("xinxi", findZhangHaoAndPassword);//向页面间传输
		System.out.println(findZhangHaoAndPassword);
		Map mapJson = new HashMap();
		if(findZhangHaoAndPassword!=null){
			mapJson.put("cg", "登录成功");
		}else{
			mapJson.put("cw", "帐号或密码错误！");
		}
		transForJson(mapJson, response);
	}
	/**
	 * @描述 跳转到后台主页
	 * @作者 老鲁
	 */
	@RequestMapping("/toIndex")
	public String toIndex(HttpServletRequest request){
			try {
				InetAddress localHost = InetAddress.getLocalHost();
				request.setAttribute("localHost", localHost);
				System.out.println("本机的IP = " + localHost);
			} catch (UnknownHostException e) {
				e.printStackTrace();
			}
		return "index";
	}
	/**
	 * 跳转到角色管理
	 * */
	@RequestMapping("/adminrole")
	public String adminrole(){
		return "adminrole";
	}
	/**
	 * 打开修改权限
	 * */
	@RequestMapping("/adminroleadd")
	public String adminroleadd(){
		return "adminroleadd";
	}
	/**
	 * 管理员列表
	 * */
	@RequestMapping("/adminlist")
	public String adminlist(){
		return "adminlist";
	}
}
