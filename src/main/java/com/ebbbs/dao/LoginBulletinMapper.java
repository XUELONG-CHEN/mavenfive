package com.ebbbs.dao;

import com.ebbbs.entity.LoginBulletin;

import java.util.List;

/**
 * @author xl.chen
 * @date 2018年6月8日下午3:40:20
 */
public interface LoginBulletinMapper {
	
	/**
	 * 游戏登陆公告列表
	 * 
	 * @param loginBulletin 需要查询的条件
	 * @return 所有游戏公告数据
	 */
	List<LoginBulletin> listLoginBulletin(LoginBulletin loginBulletin);
	
	/**
	 * 添加游戏登陆公告
	 * 
	 * @param loginBulletin 需要添加的数据
	 */
	void insertLoginBulletin(LoginBulletin loginBulletin);
	
	/**
	 * 删除游戏登陆公告
	 * 
	 * @param id 需要删除的id
	 */
	void deleteLoginBulletinById(Integer id);
	
	/**
	 * 修改游戏登陆公告
	 * 
	 * @param loginBulletin 需要修改的数据
	 */
	void updateLoginBulletinById(LoginBulletin loginBulletin);
}
