package com.hcddz.entity;

import java.util.Date;

/**
 * @作者：老鲁
 * @用途：后台实体类
 * @时间：2017年7月25日上午9:40:25
 */
public class HouTaiDengLu {
		private Integer houid;//后台账号管理id
		private String username;//后台账号
		private String password;//后台密码
		private String dengluip;//登陆ip同注册Ip
		private String zuihouip;//最后登陆的Ip
		private String yonghuming;//最后登陆的Ip
		private Date zuihoudate;//最后登陆的时间
		public Integer getHouid() {
			return houid;
		}
		public void setHouid(Integer houid) {
			this.houid = houid;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getDengluip() {
			return dengluip;
		}
		public void setDengluip(String dengluip) {
			this.dengluip = dengluip;
		}
		public String getZuihouip() {
			return zuihouip;
		}
		public void setZuihouip(String zuihouip) {
			this.zuihouip = zuihouip;
		}
		public String getYonghuming() {
			return yonghuming;
		}
		public void setYonghuming(String yonghuming) {
			this.yonghuming = yonghuming;
		}
		public Date getZuihoudate() {
			return zuihoudate;
		}
		public void setZuihoudate(Date zuihoudate) {
			this.zuihoudate = zuihoudate;
		}
		@Override
		public String toString() {
			return "HouTaiDengLu [houid=" + houid + ", username=" + username + ", password=" + password + ", dengluip="
					+ dengluip + ", zuihouip=" + zuihouip + ", yonghuming=" + yonghuming + ", zuihoudate=" + zuihoudate
					+ "]";
		}
		public HouTaiDengLu(Integer houid, String username, String password, String dengluip, String zuihouip,
				String yonghuming, Date zuihoudate) {
			super();
			this.houid = houid;
			this.username = username;
			this.password = password;
			this.dengluip = dengluip;
			this.zuihouip = zuihouip;
			this.yonghuming = yonghuming;
			this.zuihoudate = zuihoudate;
		}
		public HouTaiDengLu() {
			super();
			// TODO Auto-generated constructor stub
		}
			
}
