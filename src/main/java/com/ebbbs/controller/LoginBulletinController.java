package com.ebbbs.controller;

import com.ebbbs.entity.LoginBulletin;
import com.ebbbs.service.LoginBulletinService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * 游戏登陆公告模块
 * 
 * @author xl.chen
 * @date 2018年5月24日上午10:35:27
 */
@Controller
@RequestMapping("loginBulletin")
public class LoginBulletinController {
	
	@Resource
	private LoginBulletinService loginBulletinService;

/*	@RequestMapping("listLoginBulletin.do")
	public String listUsers(Model model, String name,String hiddenValue){
		
		String url="http://192.168.3.156:8080/GameManagementSystem1/users/listUsers.do";
		JSONObject jsonResult = HttpClientUtils.httpGet(url);
		JSONArray jsonArray = jsonResult.getJSONArray("result");
        List<Users> usersList = JSON.parseArray(jsonArray.toJSONString(), Users.class);
        model.addAttribute("usersList", usersList);
			
		return "/game_bulletin/loginBulletin_list";
	}*/
	
	@RequestMapping("listLoginBulletin.do")
	public String listLoginBulletin(Model model, LoginBulletin loginBulletin){
        List<LoginBulletin> loginBulletinList = loginBulletinService.listLoginBulletin(loginBulletin);
        model.addAttribute("loginBulletinList", loginBulletinList);
		return "/game_bulletin/loginBulletin_list";
	}
	
	@RequestMapping("insertLoginBulletin.do")
	public String insertLoginBulletin(Model model, LoginBulletin loginBulletin){
        loginBulletinService.insertLoginBulletin(loginBulletin);
		return "redirect:listLoginBulletin.do";
	}
	
	@RequestMapping("deleteLoginBulletinById.do")
	public String deleteLoginBulletinById(Integer id){
		loginBulletinService.deleteLoginBulletinById(id);
		return "redirect:listLoginBulletin.do";
	}
	
	@RequestMapping("updateLoginBulletinById.do")
	public String updateLoginBulletinById(LoginBulletin loginBulletin){
		loginBulletinService.updateLoginBulletinById(loginBulletin);
		return "redirect:listLoginBulletin.do";
	}
}
