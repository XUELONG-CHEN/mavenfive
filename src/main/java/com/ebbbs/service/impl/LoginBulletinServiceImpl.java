package com.ebbbs.service.impl;

import com.ebbbs.dao.LoginBulletinMapper;
import com.ebbbs.entity.LoginBulletin;
import com.ebbbs.service.LoginBulletinService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author xl.chen
 * @date 2018年6月10日下午2:59:28
 */
@Service
public class LoginBulletinServiceImpl implements LoginBulletinService{
	
	@Resource
	public LoginBulletinMapper loginBulletinMapper;
	
	public List<LoginBulletin> listLoginBulletin(LoginBulletin loginBulletin){
		try {
			return loginBulletinMapper.listLoginBulletin(loginBulletin);
		} catch (Exception e) {
			return null;
		}
	}
	
	public void insertLoginBulletin(LoginBulletin loginBulletin){
		try {
			loginBulletinMapper.insertLoginBulletin(loginBulletin);
		} catch (Exception e) {
		}
	}
	
	public void deleteLoginBulletinById(Integer id){
		try {
			loginBulletinMapper.deleteLoginBulletinById(id);
		} catch (Exception e) {
		}
	}
	
	public void updateLoginBulletinById(LoginBulletin loginBulletin){
		try {
			loginBulletinMapper.updateLoginBulletinById(loginBulletin);
		} catch (Exception e) {
		}
	}
}
