package com.mvc.Final;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import com.mvc.Final.model.biz.LoginBiz;
import com.mvc.Final.model.dto.FileValidator;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.UploadFile;

@Controller
public class LoginController {
	
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginBiz lbiz;
	
	@Autowired
	private FileValidator fileValidator;
	
	@RequestMapping("/login.do")
	public String Login(String id, String pw, HttpSession session, HttpServletRequest request) {
		logger.info("Login");
		LoginDto ldto = lbiz.login(id, pw, session);
		String referer = request.getHeader("Referer");
		if(ldto != null) {
			System.out.println("login success (" + ldto.getId() + ")");
		    return "redirect:"+ referer;
		}else {
			return "redirect:againlogin.do";
		}
		
		

	}
	
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		logger.info("LogOut");
		session.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping("/registform.do")
	public String registForm() {
		logger.info("RegistForm");
		return "registform";
	}
	
	@RequestMapping("/registres.do")
	public String registRes(LoginDto ldto,HttpServletRequest request, Model model, UploadFile uploadFile, BindingResult result) {
		logger.info("RegistRes");
		
		fileValidator.validate(uploadFile, result);
		
		if(result.hasErrors()) {
			System.out.println("ldto : " +ldto);
			int res = lbiz.registUser(ldto);
			System.out.println("res: "+res);
			if(res>0) {
				return "redirect:main.do";
			}else {
				return "redirect:registform.do";
			}
		}else {
			MultipartFile file = uploadFile.getMpfile();
			String name = ldto.getId()+"image.JPG";
			
			UploadFile fileObj = new  UploadFile();
			fileObj.setName(name);
			
			InputStream inputStream = null;
			OutputStream outputStream = null;
			
			
			try {
				inputStream = file.getInputStream();
				
				String path = WebUtils.getRealPath(request.getSession().getServletContext(), "/storage/profile");
				System.out.println("업로드 될 실제 경로: "+path);
				
				String path2 = path.substring(0,path.indexOf(".metadata"))+"final_proj\\src\\main\\webapp\\storage\\profile";
				System.out.println("파일이 저장될 위치: "+path2);
				File storage = new File(path2);
				if(!storage.exists()) {
					try {
						storage.mkdirs();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				File newFile = new File(path2+"/"+name);
				if(!newFile.exists()) {
					newFile.createNewFile();
				}
				
				outputStream = new FileOutputStream(newFile);
				
				int read = 0;
				byte[] b = new byte[(int)file.getSize()];
				
				while((read=inputStream.read(b)) != -1) {
					outputStream.write(b,0,read);
				}
				
				
			} catch (IOException e) {
				e.printStackTrace();
			}finally {
				try {
					inputStream.close();
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			ldto.setProfile(name);
			System.out.println("ldto : " +ldto);
			int res = lbiz.registUser(ldto);
			System.out.println("res: "+res);
			if(res>0) {
				return "redirect:main.do";
			}else {
				return "redirect:registform.do";
			}
		}
		
	}
	
	@RequestMapping("/idchk.do")
	public String idchk(String id,Model model) {
		
		logger.info("IDCheck");
		String res = lbiz.idchk(id);
		boolean idnotused = true;
		if(res != null) {
			idnotused = false;
		}
		model.addAttribute("idnotused", idnotused);
		return "idchk";
	}
	
	@ResponseBody
	@RequestMapping("/find_id.do")
	public Map<String,Object> find_id(HttpServletRequest request, Model model, String email, String name) {
		logger.info("Find ID");
		System.out.println("확인용  email:"+email+" name:"+name);
		Map<String,Object> rmap = new HashMap<String,Object>();
		LoginDto ldto = new LoginDto();
		ldto.setEmail(email);
		ldto.setName(name);
		
		String res = lbiz.find_id(ldto);
		System.out.println("RES: "+res);
		
		rmap.put("res", res);
		return rmap;
	}
	
	
	
	
	
}
