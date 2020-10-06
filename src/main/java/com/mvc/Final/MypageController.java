package com.mvc.Final;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import com.mvc.Final.model.biz.MypageBiz;
import com.mvc.Final.model.dto.FileValidator;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.UploadFile;

@Controller
public class MypageController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MypageBiz mbiz;
	
	@Autowired
	private FileValidator fileValidator;
	
	@RequestMapping("/mypage.do")
	public String mypage(Model model, HttpSession session, HttpServletRequest request) {
		logger.info("MyPage");
		String login = ((LoginDto)session.getAttribute("login")).getId();
		System.out.println("login mypage:"+login);
		
		String path="\\storage\\profile";
		long time = new Date().getTime();
	
		System.out.println("저장된 파일 경로: "+path);
		String filename = login+"image.jpg";

		//ADMIN의 데이터
		model.addAttribute("hclist",mbiz.selectHostChk());
		model.addAttribute("hlist",mbiz.selectHost());
		model.addAttribute("rqlist",mbiz.selectRequire());
		
		//Guest의 데이터
		model.addAttribute("relist",mbiz.selectReservation(login));
		model.addAttribute("profile",path+"\\"+filename);
		model.addAttribute("time",time);
		
		return "mypage";
	}
	
	@RequestMapping("/hostpage.do")
	public String hostpage(Model model,HttpSession session) {
		logger.info("HostPage");
		String login = ((LoginDto)session.getAttribute("login")).getId();
		Date today = new Date();
		
		//예약자현황
		model.addAttribute("relist",mbiz.selectReservation_host(login));
		model.addAttribute("today",today);
		model.addAttribute("host",mbiz.host(login));
		
		return "hostpage";
	}
	
	@RequestMapping("/approve.do")
	public String approve(int seq_h) {
		logger.info("Approve");
		int res = mbiz.approve(seq_h);
		if(res>0) {
			return "redirect:mypage.do";
		}else {
			return "redirect:mypage.do";
		}
	}
	
	@RequestMapping("/hdelete.do")
	public String hdelete(int seq_h) {
		logger.info("HOST Delete");
		System.out.println("seq_h: "+seq_h);
		int res = mbiz.hdelete(seq_h);
		System.out.println("res: "+res);
		if(res>0) {
			return "redirect:mypage.do";
		}else {
			return "redirect:mypage.do";
		}
		
	}
	
	@RequestMapping("/profileupdate.do")
	public String profileupdate(LoginDto ldto) {
		logger.info("ProfileUpdate");
		System.out.println("ldto결과: "+ldto.toString());
		int res = mbiz.profileupdate(ldto);
		
		if(res>0) {
			return "redirect:mypage.do";
		}else {
			return "redirect:mypage.do";
		}
	}
	
	@RequestMapping("/MP_profileupdate.do")
	public String MP_profileupdate(LoginDto ldto,HttpServletRequest request, Model model, UploadFile uploadFile, BindingResult result,HttpSession session) {
		logger.info("MP_ProfileUpdate");
		fileValidator.validate(uploadFile, result);
		
		if(result.hasErrors()) {
			
			return "redirect:mypage.do";
			
		}else {
			MultipartFile file = uploadFile.getMpfile();
			String name = ((LoginDto)session.getAttribute("login")).getId()+"image.jpg";
			
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
			ldto.setId(((LoginDto)session.getAttribute("login")).getId());
			System.out.println("ldto : " +ldto);
			int res = mbiz.mp_profileupdate(ldto);
			if(res >0) {
				((LoginDto)session.getAttribute("login")).setProfile(name);
				return "redirect:mypage.do";
			}else {
				return "redirect:mypage.do";
			}
			
			
			
		}
		
	}
	
	
}
