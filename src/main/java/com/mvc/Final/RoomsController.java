package com.mvc.Final;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.mvc.Final.model.biz.RoomsBiz;
import com.mvc.Final.model.dto.FileValidator;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;
import com.mvc.Final.model.dto.Rooms_facilityDto;
import com.mvc.Final.model.dto.Rooms_introDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.Rooms_ruleDto;
import com.mvc.Final.model.dto.Rooms_safetyDto;
import com.mvc.Final.model.dto.UploadFile;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

@Controller
public class RoomsController {
	 RoomsDto rdto = new RoomsDto();
	 Rooms_detailDto rdetail = new Rooms_detailDto();
	 Rooms_facilityDto rfac = new Rooms_facilityDto();
	 Rooms_safetyDto rsafe = new Rooms_safetyDto();
	 Rooms_ruleDto rule = new Rooms_ruleDto();
	 Rooms_introDto intro = new Rooms_introDto();
	 Rooms_photoDto photo = new Rooms_photoDto();
	 HostDto hdto = new HostDto();
	 
	  
	@Autowired
	private RoomsBiz rbiz;
	
	@Autowired
	private FileValidator fileValidator;
	
	private static final Logger logger = LoggerFactory.getLogger(RoomsController.class);


	@RequestMapping(value = "/rooms.do", method =  RequestMethod.GET)
	public String rooms(HttpServletRequest request, HttpSession session, Model model) {
		
	   logger.info("rooms");  //com.Mvc.Final.RoomsController - rooms

	   int seq_m = ((LoginDto)session.getAttribute("login")).getSeq_m();
	   System.out.println("seq_m: "+seq_m);
	   
	   hdto.setSeq_m(seq_m);
	   
	   int seq_hh = rbiz.selecthostseq(hdto);
	   System.out.println("seq_hh: "+seq_hh);
	   if(seq_hh == 0) {
		   int hres = rbiz.inserthost(hdto);
		   if(hres>0) {
			   System.out.println("호스트 테이블 컬럼 생성");
			   int seq_h = rbiz.selecthostseq(hdto);
			   hdto.setSeq_h(seq_h);
		   }
		   
	   }
	   
	   
	   
	  /* String addr1 = request.getParameter("sample6_address1"); 
	   String addr2 = request.getParameter("sample6_detailAddress2");
	   String addr3 = addr1 + " " + addr2;
	   //웹에서 값을 전달 받음
	 
	    session.setAttribute("addr",addr3);
	    String Addr = (String)session.getAttribute("addr");
	    rdto.setAddr(Addr);
	    System.out.println(rdto.getAddr());
	    
	    model.addAttribute("addr", Addr);*/

		return "rooms";
	
	}
	
	@RequestMapping(value = "/rooms2.do", method = RequestMethod.GET)
	public String rooms2(HttpServletRequest request, RedirectAttributes redirectAttributes,HttpSession session,Model model) {
		logger.info("rooms2");
		
		 redirectAttributes.addFlashAttribute("addr",rdto.getAddr());
		 System.out.println("rooms2------>"+rdto.getAddr());
		 
		 String addr1 = request.getParameter("sample6_address1"); 
		   String addr2 = request.getParameter("sample6_detailAddress2");
		   String addr3 = addr1 + " " + addr2;
		   //웹에서 값을 전달 받음
		 System.out.println("addr1:"+addr1+", addr2: "+addr2);
		    session.setAttribute("addr",addr3);
		    String Addr = (String)session.getAttribute("addr");
		    rdto.setAddr(Addr);
		    System.out.println(rdto.getAddr());
		   
		 

		

		return "rooms2"; 
	
	}
	@RequestMapping(value = "/rooms3.do", method = RequestMethod.GET)
	public String rooms3(HttpServletRequest request, RedirectAttributes redirectAttributes, Model model,HttpSession session) {
		logger.info("rooms3");
		
		String r_type = request.getParameter("test");
	    String room_name = request.getParameter("room_name");
	    int price = 0;
		try {
			price = Integer.parseInt(request.getParameter("room_price"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		
	    session.setAttribute("r_type", r_type);
	    session.setAttribute("room_name", room_name);
	    session.setAttribute("price", price);
	    
	    String Type = (String)session.getAttribute("r_type");
	    String Name = (String)session.getAttribute("room_name");
	    int Price = ((Integer)(session.getAttribute("price"))).intValue();
	    
	    rdto.setR_type(r_type);
	    rdto.setRoom_name(room_name);
	    rdto.setPrice(Price);
	    
	    System.out.println(rdto.getR_type());
	    System.out.println(rdto.getRoom_name());
	    System.out.println(rdto.getPrice());
		
		 
        
       return "rooms3";

	
	}
	@RequestMapping(value = "/rooms4.do", method = RequestMethod.GET)
	public String rooms4(HttpServletRequest request, RedirectAttributes redirectAttributes) {
		logger.info("rooms4");
		
		redirectAttributes.addFlashAttribute("addr",rdto.getAddr());
		 redirectAttributes.addFlashAttribute("r_type",rdto.getR_type());
		 redirectAttributes.addFlashAttribute("room_name",rdto.getRoom_name());
		 redirectAttributes.addFlashAttribute("price",rdto.getPrice());
		
		 System.out.println("rooms2------>"+rdto.getAddr());
		 System.out.println("rooms3.do--->" + rdto.getR_type());
		 System.out.println("rooms3.do--->" + rdto.getRoom_name());
		 System.out.println("rooms3.do--->" + rdto.getPrice());
		
		 int person = 0;
		 int bath_room = 0;
		 int bed_room = 0;
		 int bed = 0;
		 
		    try {
				person = Integer.parseInt(request.getParameter("person"));
				bath_room = Integer.parseInt(request.getParameter("bath_room"));
				bed_room = Integer.parseInt(request.getParameter("bed_room"));
					bed = Integer.parseInt(request.getParameter("bed"));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			
		HttpSession session = request.getSession(true);
		
		session.setAttribute("person", person);
	    session.setAttribute("bath_room", bath_room);
	    session.setAttribute("bed_room", bed_room);
	    session.setAttribute("bed", bed);
	    
	    int Person = ((Integer)(session.getAttribute("person"))).intValue();
	    int Bath_room = ((Integer)(session.getAttribute("bath_room"))).intValue();
	    int Bed_room = ((Integer)(session.getAttribute("bed_room"))).intValue();
	    int Bed = ((Integer)(session.getAttribute("bed"))).intValue();
	   
	    rdto.setPerson(Person);
	    rdto.setBath_room(Bath_room);
	    rdto.setBed_room(Bed_room);
       rdto.setBed(Bed);
       
       System.out.println("인원수"+rdto.getPerson());
       System.out.println("욕실수"+rdto.getBath_room());
       System.out.println("침실수"+rdto.getBed_room());
       System.out.println("침대수"+rdto.getBed());
	
	    String essential = request.getParameter("essential");
       String heating = request.getParameter("heating");
       String aircon = request.getParameter("aircon");
       String iron =request.getParameter("iron");
       String tv = request.getParameter("tv");
       String shampoo = request.getParameter("shampoo");
       String hairdry =request.getParameter("hairdry");
       String desk = request.getParameter("desk");
       String closet = request.getParameter("closet");
       String wifi =request.getParameter("wifi");
       
       session.setAttribute("essential", essential);
       session.setAttribute("heating", heating);
       session.setAttribute("aircon", aircon);
       session.setAttribute("iron", iron);
       session.setAttribute("tv", tv);
       session.setAttribute("shampoo", shampoo);
       session.setAttribute("hairdry", hairdry);
       session.setAttribute("desk", desk);
       session.setAttribute("closet", closet);
       session.setAttribute("wifi", wifi);
       
       String Essential = (String)session.getAttribute("essential");
       String Heating = (String)session.getAttribute("heating");
       String Aircon = (String)session.getAttribute("aircon");
       String Iron = (String)session.getAttribute("iron");
       String Tv = (String)session.getAttribute("tv");
       String Shampoo = (String)session.getAttribute("shampoo");
       String Hairdry = (String)session.getAttribute("hairdry");
       String Desk = (String)session.getAttribute("desk");
       String Closet = (String)session.getAttribute("closet");
       String Wifi = (String)session.getAttribute("wifi");
      
       
       rdetail.setEssential(Essential);
       rdetail.setHeating(Heating);
       rdetail.setAircondition(Aircon);
       rdetail.setIron(Iron);
       rdetail.setTv(Tv);
       rdetail.setShampoo(Shampoo);
       rdetail.setHairdry(Hairdry);
       rdetail.setDesk(Desk);
       rdetail.setCloset(Closet);
       rdetail.setWifi(Wifi);
       
       System.out.println("선택항목 : " + rdetail.getEssential()+" "
                                     + rdetail.getHeating() +" "
                                     + rdetail.getAircondition() +" "
       		                      + rdetail.getIron() +" "
                                     + rdetail.getTv() +" "
       		                      + rdetail.getShampoo() +" "
                                     + rdetail.getHairdry() +" "
                                     + rdetail.getDesk() +" " 
                                     + rdetail.getCloset() +" "
                                     + rdetail.getWifi());
		
		 
		
		return "rooms4";
	
	}
	@RequestMapping(value = "/rooms5.do", method = RequestMethod.GET)
	public String rooms5(HttpServletRequest request, RedirectAttributes redirectAttributes) {
		logger.info("rooms5");
		
		redirectAttributes.addFlashAttribute("addr",rdto.getAddr());
		 redirectAttributes.addFlashAttribute("r_type",rdto.getR_type());
		 redirectAttributes.addFlashAttribute("room_name",rdto.getRoom_name());
		 redirectAttributes.addFlashAttribute("price",rdto.getPrice());
		 redirectAttributes.addFlashAttribute("person",rdto.getPerson());
		 redirectAttributes.addFlashAttribute("bath_room",rdto.getBath_room());
		 redirectAttributes.addFlashAttribute("bed_room",rdto.getBed_room());
		 redirectAttributes.addFlashAttribute("essential",rdetail.getEssential());
		 redirectAttributes.addFlashAttribute("heating",rdetail.getHeating());
		 redirectAttributes.addFlashAttribute("aircon",rdetail.getAircondition());
		 redirectAttributes.addFlashAttribute("iron",rdetail.getIron());
		 redirectAttributes.addFlashAttribute("tv",rdetail.getTv());
		 redirectAttributes.addFlashAttribute("shampoo",rdetail.getShampoo());
		 redirectAttributes.addFlashAttribute("hairdry",rdetail.getHairdry());
		 redirectAttributes.addFlashAttribute("desk",rdetail.getDesk());
		 redirectAttributes.addFlashAttribute("closet",rdetail.getCloset());
		 redirectAttributes.addFlashAttribute("wifi",rdetail.getWifi());
		 

		 System.out.println("rooms------>"+rdto.getAddr());
		 System.out.println("rooms2.do--->" + rdto.getR_type());
		 System.out.println("rooms2.do--->" + rdto.getRoom_name());
		 System.out.println("rooms2.do--->" + rdto.getPrice());
		 System.out.println("rooms2.do--->" + rdto.getPerson());
		 System.out.println("rooms2.do--->" + rdto.getBath_room());
		 System.out.println("rooms2.do--->" + rdto.getBed_room());
		 System.out.println("rooms3.do--->" + rdetail.getEssential());
		 System.out.println("rooms3.do--->" + rdetail.getHeating());
		 System.out.println("rooms3.do--->" + rdetail.getAircondition());
		 System.out.println("rooms3.do--->" + rdetail.getIron());
		 System.out.println("rooms3.do--->" + rdetail.getTv());
		 System.out.println("rooms3.do--->" + rdetail.getShampoo());
		 System.out.println("rooms3.do--->" + rdetail.getHairdry());
		 System.out.println("rooms3.do--->" + rdetail.getDesk());
		 System.out.println("rooms3.do--->" + rdetail.getCloset());
		 System.out.println("rooms3.do--->" + rdetail.getWifi());
		 
		 
		 
		
		String washer = request.getParameter("washer");
		String dryer = request.getParameter("dryer");
		String kitchen = request.getParameter("kitchen");
		String pool = request.getParameter("pool");
		String fitness = request.getParameter("fitness");
	    String parking = request.getParameter("parking");
	    String checkin = request.getParameter("checkin");
		
	    HttpSession session = request.getSession(true);
	    
	    session.setAttribute("washer", washer);
	    session.setAttribute("dryer", dryer);
	    session.setAttribute("kitchen", kitchen);
	    session.setAttribute("pool", pool);
	    session.setAttribute("fitness", fitness);
	    session.setAttribute("parking", parking);
	    session.setAttribute("checkin", checkin);
	    
	    String Washer = (String)session.getAttribute("washer");
	    String Dryer = (String)session.getAttribute("dryer");
	    String Kitchen = (String)session.getAttribute("kitchen");
	    String Pool = (String)session.getAttribute("pool");
	    String Fitness = (String)session.getAttribute("fitness");
	    String Paking = (String)session.getAttribute("parking");
	    String Checkin = (String)session.getAttribute("checkin");
		
		rfac.setWasher(washer);
		rfac.setDryer(dryer);
		rfac.setKitchen(kitchen);
		rfac.setPool(pool);
		rfac.setFitness(fitness);
		rfac.setParking(parking);
		rdto.setCheckin(Checkin);
		
		System.out.println("getwasher-->" + rfac.getWasher());
		System.out.println("getdryer-->" + rfac.getDryer());
		System.out.println("getkitchen-->" + rfac.getKitchen());
		System.out.println("getpool-->" + rfac.getPool());
		System.out.println("getfitness-->" + rfac.getFitness());
		System.out.println("getparking-->" + rfac.getParking());
		System.out.println("getcheckin-->" + rdto.getCheckin());
		
		String fire_sensor = request.getParameter("fire_sensor");
		String co_sensor = request.getParameter("co_sensor");
       String e_kit = request.getParameter("e_kit");
       String fire_off = request.getParameter("fire_off");
       
       session.setAttribute("fire_sensor", fire_sensor);
	    session.setAttribute("co_sensor", co_sensor);
	    session.setAttribute("e_kit", e_kit);
	    session.setAttribute("fire_off", fire_off);
	    
	    String Fire_sensor = (String)session.getAttribute("fire_sensor");
	    String Co_sensor = (String)session.getAttribute("co_sensor");
	    String E_kit = (String)session.getAttribute("e_kit");
	    String Fire_off = (String)session.getAttribute("fire_off");

		
		rsafe.setFire_sensor(fire_sensor);
		rsafe.setCo_sensor(co_sensor);
		rsafe.setE_kit(e_kit);
		rsafe.setFire_off(fire_off);
		
		System.out.println("getfire_sensor-->" + rsafe.getFire_sensor());
		System.out.println("getco_sensor-->" + rsafe.getCo_sensor());
		System.out.println("gete_kit-->" + rsafe.getE_kit());
		System.out.println("getfire_off-->" + rsafe.getFire_off());
		
        
        
		return "rooms5";
	
	}
       @RequestMapping(value = "/rooms6.do", method = RequestMethod.GET) 
       public String rooms6(HttpServletRequest request, RedirectAttributes redirectAttributes, String title, String simple, String detail) {
    	   logger.info("rooms6");
	  
    	   redirectAttributes.addFlashAttribute("addr",rdto.getAddr());
           redirectAttributes.addFlashAttribute("r_type",rdto.getR_type());
           redirectAttributes.addFlashAttribute("room_name",rdto.getRoom_name());
           redirectAttributes.addFlashAttribute("price",rdto.getPrice());
           redirectAttributes.addFlashAttribute("person",rdto.getPerson());
           redirectAttributes.addFlashAttribute("bath_room",rdto.getBath_room());
           redirectAttributes.addFlashAttribute("bed_room",rdto.getBed_room());
           redirectAttributes.addFlashAttribute("essential",rdetail.getEssential());
           redirectAttributes.addFlashAttribute("heating",rdetail.getHeating());
           redirectAttributes.addFlashAttribute("aircon",rdetail.getAircondition());
           redirectAttributes.addFlashAttribute("iron",rdetail.getIron());
           redirectAttributes.addFlashAttribute("tv",rdetail.getTv());
           redirectAttributes.addFlashAttribute("shampoo",rdetail.getShampoo());
           redirectAttributes.addFlashAttribute("hairdry",rdetail.getHairdry());
           redirectAttributes.addFlashAttribute("desk",rdetail.getDesk());
           redirectAttributes.addFlashAttribute("closet",rdetail.getCloset());
           redirectAttributes.addFlashAttribute("wifi",rdetail.getWifi());
           redirectAttributes.addFlashAttribute("washer",rfac.getWasher());
           redirectAttributes.addFlashAttribute("dryer",rfac.getDryer());
           redirectAttributes.addFlashAttribute("kitchen",rfac.getKitchen());
           redirectAttributes.addFlashAttribute("pool",rfac.getPool());
           redirectAttributes.addFlashAttribute("fitness",rfac.getFitness());
           redirectAttributes.addFlashAttribute("parking",rfac.getParking());
           redirectAttributes.addFlashAttribute("fire_sensor",rsafe.getFire_sensor());
           redirectAttributes.addFlashAttribute("co_sensor",rsafe.getCo_sensor());
           redirectAttributes.addFlashAttribute("e_kit",rsafe.getE_kit());
           redirectAttributes.addFlashAttribute("fire_off",rsafe.getFire_off());
           
           
            System.out.println("rooms------>"+rdto.getAddr());
   		 System.out.println("rooms2.do--->" + rdto.getR_type());
   		 System.out.println("rooms2.do--->" + rdto.getRoom_name());
   		 System.out.println("rooms2.do--->" + rdto.getPrice());
   		 System.out.println("rooms2.do--->" + rdto.getPerson());
   		 System.out.println("rooms2.do--->" + rdto.getBath_room());
   		 System.out.println("rooms2.do--->" + rdto.getBed_room());
   		 System.out.println("rooms3.do--->" + rdetail.getEssential());
   		 System.out.println("rooms3.do--->" + rdetail.getHeating());
   		 System.out.println("rooms3.do--->" + rdetail.getAircondition());
   		 System.out.println("rooms3.do--->" + rdetail.getIron());
   		 System.out.println("rooms3.do--->" + rdetail.getTv());
   		 System.out.println("rooms3.do--->" + rdetail.getShampoo());
   		 System.out.println("rooms3.do--->" + rdetail.getHairdry());
   		 System.out.println("rooms3.do--->" + rdetail.getDesk());
   		 System.out.println("rooms3.do--->" + rdetail.getCloset());
   		 System.out.println("rooms3.do--->" + rdetail.getWifi());
   		 System.out.println("rooms4.do--->" + rfac.getWasher());
   		 System.out.println("rooms4.do--->" + rfac.getDryer());
   		 System.out.println("rooms4.do--->" + rfac.getKitchen());
   		 System.out.println("rooms4.do--->" + rfac.getPool());
   		 System.out.println("rooms4.do--->" + rfac.getFitness());
   		 System.out.println("rooms4.do--->" + rfac.getParking());
   		 System.out.println("rooms4.do--->" + rsafe.getFire_sensor());
   		 System.out.println("rooms4.do--->" + rsafe.getCo_sensor());
   		 System.out.println("rooms4.do--->" + rsafe.getE_kit());
   		 System.out.println("rooms4.do--->" + rsafe.getFire_off());
   		 

   		 HttpSession session = request.getSession(true);
   		 
   		String kid = request.getParameter("kid");
   		String baby = request.getParameter("baby");
   		String pet = request.getParameter("pet");
   		String smoking = request.getParameter("smoking");
   		String party = request.getParameter("party");
   	    String checkin_time = request.getParameter("checkin_time");
   	    String checkout_time = request.getParameter("checkout_time");
   	    
   	    session.setAttribute("kid", kid);
   	    session.setAttribute("baby", baby);
   	    session.setAttribute("pet", pet);
   	    session.setAttribute("smoking", smoking);
   	    session.setAttribute("party", party);
   	    
   	    String Kid = (String)session.getAttribute("kid");
   	    String Baby = (String)session.getAttribute("baby");
   	    String Pet = (String)session.getAttribute("pet");
   	    String Smoking = (String)session.getAttribute("smoking");
   	    String Party = (String)session.getAttribute("party");
   		

   	    rule.setKid(kid);
   	    rule.setBaby(baby);
   	    rule.setPet(pet);
   	    rule.setSmoke(smoking);
   	    rule.setParty(party);
   	    
   	    System.out.println("getkid-->" + rule.getKid());
   		System.out.println("getbaby-->" + rule.getBaby());
   		System.out.println("getpet-->" + rule.getPet());
   		System.out.println("getsmoking-->" + rule.getSmoke());
   		System.out.println("getparty-->" + rule.getParty());
   		
   		
   		session.setAttribute("checkin_time", checkin_time);
   	    session.setAttribute("checkout_time", checkout_time);
   	    
   	    String Checkin_time = (String)session.getAttribute("checkin_time");
   	    String Checkout_time = (String)session.getAttribute("checkout_time");
   	   
   	    rdto.setCheckin_time(Checkin_time);
   	    rdto.setCheckout_time(Checkout_time);
           System.out.println("체크인시간"+rdto.getCheckin_time());
           System.out.println("체크아웃 시간"+rdto.getCheckout_time());
    	   
//	  redirectAttributes.addFlashAttribute("addr",rdto.getAddr());
//	  redirectAttributes.addFlashAttribute("r_type",rdto.getR_type());
//	  redirectAttributes.addFlashAttribute("room_name",rdto.getRoom_name());
//	  redirectAttributes.addFlashAttribute("price",rdto.getPrice());
//	  redirectAttributes.addFlashAttribute("person",rdto.getPerson());
//	  redirectAttributes.addFlashAttribute("bath_room",rdto.getBath_room());
//	  redirectAttributes.addFlashAttribute("bed_room",rdto.getBed_room());
//	  redirectAttributes.addFlashAttribute("essential",rdetail.getEssential());
//	  redirectAttributes.addFlashAttribute("heating",rdetail.getHeating());
//	  redirectAttributes.addFlashAttribute("aircon",rdetail.getAircondition());
//	  redirectAttributes.addFlashAttribute("iron",rdetail.getIron());
//	  redirectAttributes.addFlashAttribute("tv",rdetail.getTv());
//	  redirectAttributes.addFlashAttribute("shampoo",rdetail.getShampoo());
//	  redirectAttributes.addFlashAttribute("hairdry",rdetail.getHairdry());
//	  redirectAttributes.addFlashAttribute("desk",rdetail.getDesk());
//	  redirectAttributes.addFlashAttribute("closet",rdetail.getCloset());
//	  redirectAttributes.addFlashAttribute("wifi",rdetail.getWifi());
//	  redirectAttributes.addFlashAttribute("washer",rfac.getWasher());
//	  redirectAttributes.addFlashAttribute("dryer",rfac.getDryer());
//	  redirectAttributes.addFlashAttribute("kitchen",rfac.getKitchen());
//	  redirectAttributes.addFlashAttribute("pool",rfac.getPool());
//	  redirectAttributes.addFlashAttribute("fitness",rfac.getFitness());
//	  redirectAttributes.addFlashAttribute("parking",rfac.getParking());
//	  redirectAttributes.addFlashAttribute("fire_sensor",rsafe.getFire_sensor());
//	  redirectAttributes.addFlashAttribute("co_sensor",rsafe.getCo_sensor());
//	  redirectAttributes.addFlashAttribute("e_kit",rsafe.getE_kit());
//	  redirectAttributes.addFlashAttribute("fire_off",rsafe.getFire_off());
//	  redirectAttributes.addFlashAttribute("kid",rule.getKid());
//	  redirectAttributes.addFlashAttribute("baby",rule.getBaby());
//	  redirectAttributes.addFlashAttribute("pet",rule.getPet());
//	  redirectAttributes.addFlashAttribute("smoking",rule.getSmoke());
//	  redirectAttributes.addFlashAttribute("party",rule.getParty());
//	  redirectAttributes.addFlashAttribute("checkin_time",rdto.getCheckin_time());
//	  redirectAttributes.addFlashAttribute("checkout_time",rdto.getCheckout_time());
//	  
//	  System.out.println("rooms------>"+rdto.getAddr());
//	  System.out.println("rooms2.do--->" + rdto.getR_type());
//	  System.out.println("rooms2.do--->" + rdto.getRoom_name());
//	  System.out.println("rooms2.do--->" + rdto.getPrice());
//	  System.out.println("rooms2.do--->" + rdto.getPerson());
//	  System.out.println("rooms2.do--->" + rdto.getBath_room());
//	  System.out.println("rooms2.do--->" + rdto.getBed_room());
//	  System.out.println("rooms3.do--->" + rdetail.getEssential());
//	  System.out.println("rooms3.do--->" + rdetail.getHeating());
//	  System.out.println("rooms3.do--->" + rdetail.getAircondition());
//	  System.out.println("rooms3.do--->" + rdetail.getIron());
//	  System.out.println("rooms3.do--->" + rdetail.getTv());
//	  System.out.println("rooms3.do--->" + rdetail.getShampoo());
//	  System.out.println("rooms3.do--->" + rdetail.getHairdry());
//	  System.out.println("rooms3.do--->" + rdetail.getDesk());
//	  System.out.println("rooms3.do--->" + rdetail.getCloset());
//	  System.out.println("rooms3.do--->" + rdetail.getWifi());
//	  System.out.println("rooms4.do--->" + rfac.getWasher());
//	  System.out.println("rooms4.do--->" + rfac.getDryer());
//	  System.out.println("rooms4.do--->" + rfac.getKitchen());
//	  System.out.println("rooms4.do--->" + rfac.getPool());
//	  System.out.println("rooms4.do--->" + rfac.getFitness());
//	  System.out.println("rooms4.do--->" + rfac.getParking());
//	  System.out.println("rooms4.do--->" + rsafe.getFire_sensor());
//	  System.out.println("rooms4.do--->" + rsafe.getCo_sensor());
//	  System.out.println("rooms4.do--->" + rsafe.getE_kit());
//	  System.out.println("rooms4.do--->" + rsafe.getFire_off());
//	  System.out.println("rooms5.do--->" + rule.getBaby());
//	  System.out.println("rooms5.do--->" + rule.getKid());
//	  System.out.println("rooms5.do--->" + rule.getPet());
//	  System.out.println("rooms5.do--->" + rule.getSmoke());
//	  System.out.println("rooms5.do--->" + rule.getParty());
//	  System.out.println("rooms5.do------>"+rdto.getCheckin_time());
//	  System.out.println("rooms5.do------>"+rdto.getCheckout_time());
//	  
//	  
//		
	 
//	  intro.setTitle(title); 
//	  intro.setContext(detail);
//	  rdto.setIntro(simple);
//	  
//	  HttpSession session = request.getSession(true);
//	  
//	  session.setAttribute("title", title);
//	  session.setAttribute("detail", detail);
//	  session.setAttribute("simple", simple);
//	  
//	    String Title = (String)session.getAttribute("title");
//	    String Detail = (String)session.getAttribute("detail");
//        String Simple = (String)session.getAttribute("simple");
//        System.out.println("1."+Title+", "+title);
//        System.out.println("2."+Detail+", "+detail);
//        System.out.println("3."+Simple+", "+simple);
//        
//	    intro.setTitle(Title);
//	    intro.setContext(Detail);
//	    rdto.setIntro(simple);
//	    
//	    System.out.println("제목 : "+intro.getTitle());
//        System.out.println("소개글 : "+intro.getContext());
//        System.out.println("간단한 소개 : "+rdto.getIntro());
   
	  return "rooms6";
	  
	  }
	 
	@RequestMapping(value = "/insert.do", method= RequestMethod.POST)
	public String insert(HttpServletRequest request, RedirectAttributes redirectAttributes, 
			String title, String simple, String detail, String p_path, UploadFile uploadFile, BindingResult result, MultipartHttpServletRequest mtfRequest) {

		
		  redirectAttributes.addFlashAttribute("addr",rdto.getAddr());
		  redirectAttributes.addFlashAttribute("r_type",rdto.getR_type());
		  redirectAttributes.addFlashAttribute("room_name",rdto.getRoom_name());
		  redirectAttributes.addFlashAttribute("price",rdto.getPrice());
		  redirectAttributes.addFlashAttribute("person",rdto.getPerson());
		  redirectAttributes.addFlashAttribute("bath_room",rdto.getBath_room());
		  redirectAttributes.addFlashAttribute("bed_room",rdto.getBed_room());
		  redirectAttributes.addFlashAttribute("essential",rdetail.getEssential());
		  redirectAttributes.addFlashAttribute("heating",rdetail.getHeating());
		  redirectAttributes.addFlashAttribute("aircon",rdetail.getAircondition());
		  redirectAttributes.addFlashAttribute("iron",rdetail.getIron());
		  redirectAttributes.addFlashAttribute("tv",rdetail.getTv());
		  redirectAttributes.addFlashAttribute("shampoo",rdetail.getShampoo());
		  redirectAttributes.addFlashAttribute("hairdry",rdetail.getHairdry());
		  redirectAttributes.addFlashAttribute("desk",rdetail.getDesk());
		  redirectAttributes.addFlashAttribute("closet",rdetail.getCloset());
		  redirectAttributes.addFlashAttribute("wifi",rdetail.getWifi());
		  redirectAttributes.addFlashAttribute("washer",rfac.getWasher());
		  redirectAttributes.addFlashAttribute("dryer",rfac.getDryer());
		  redirectAttributes.addFlashAttribute("kitchen",rfac.getKitchen());
		  redirectAttributes.addFlashAttribute("pool",rfac.getPool());
		  redirectAttributes.addFlashAttribute("fitness",rfac.getFitness());
		  redirectAttributes.addFlashAttribute("parking",rfac.getParking());
		  redirectAttributes.addFlashAttribute("fire_sensor",rsafe.getFire_sensor());
		  redirectAttributes.addFlashAttribute("co_sensor",rsafe.getCo_sensor());
		  redirectAttributes.addFlashAttribute("e_kit",rsafe.getE_kit());
		  redirectAttributes.addFlashAttribute("fire_off",rsafe.getFire_off());
		  redirectAttributes.addFlashAttribute("kid",rule.getKid());
		  redirectAttributes.addFlashAttribute("baby",rule.getBaby());
		  redirectAttributes.addFlashAttribute("pet",rule.getPet());
		  redirectAttributes.addFlashAttribute("smoking",rule.getSmoke());
		  redirectAttributes.addFlashAttribute("party",rule.getParty());
		  redirectAttributes.addFlashAttribute("checkin_time",rdto.getCheckin_time());
		  redirectAttributes.addFlashAttribute("checkout_time",rdto.getCheckout_time());
		  
		  HttpSession session = request.getSession(true);
		  
		  java.util.List<MultipartFile> fileList = mtfRequest.getFiles("mpfile");
		  
		   System.out.println("파일들: "+fileList);
		   
		   String path = null;
		  
//			String name = mtfRequest.getParameter("mpfile");
//			System.out.println("src value : " + name);
			
//			try {
//				path = WebUtils.getRealPath(request.getSession().getServletContext(), "/storage/rooms");
//				System.out.println("업로드 될 실제 경로: "+path);
//				String path2 = path.substring(0,path.indexOf(".metadata"))+"final_proj2\\src\\main\\webapp\\storage\\rooms";
//				System.out.println("파일이 저장될 위치: "+path2);
//				
//				File storage = new File(path2);
//				if(!storage.exists()) {
//					try {
//						storage.mkdirs();
//					} catch (Exception e) {
//						e.printStackTrace();
//					}
//				}
//				
//			} catch (FileNotFoundException e1) {
//				e1.printStackTrace();
//			}
			  intro.setTitle(title); 
			  intro.setContext(detail);
			  rdto.setIntro(simple);
			  
//			  photo.setP_path(name);
			  
			  session.setAttribute("title", title);
			  session.setAttribute("detail", detail);
			  session.setAttribute("simple", simple);
			  
//			  session.setAttribute("p_path", p_path);
			  
			    String Title = (String)session.getAttribute("title");
			    String Detail = (String)session.getAttribute("detail");
		        String Simple = (String)session.getAttribute("simple");
		        
//		        String P_path = (String)session.getAttribute("p_apth");
		        
		        System.out.println("1."+Title+", "+title);
		        System.out.println("2."+Detail+", "+detail);
		        System.out.println("3."+Simple+", "+simple);
		        
			    
			    System.out.println("제목 : "+intro.getTitle());
		        System.out.println("소개글 : "+intro.getContext());
		        System.out.println("간단한 소개 : "+rdto.getIntro());
		        System.out.println("rdto값들: "+rdto.toString());
		        
			   rdto.setSeq_h(hdto.getSeq_h());
			   System.out.println("seq_h: "+rdto.getSeq_h());
			   rbiz.insertrooms(rdto);
			   int seq_rm = rbiz.selectrooms(rdto); 	
			   System.out.println("seq_rm: "+seq_rm);
			   rfac.setSeq_rm(seq_rm);
			   rdetail.setSeq_rm(seq_rm);
			   rsafe.setSeq_rm(seq_rm);
			   rule.setSeq_rm(seq_rm);
			   intro.setSeq_rm(seq_rm);
			   rbiz.insertfacility(rfac);
			   System.out.println("seq_rm: "+seq_rm);
			   rbiz.insertdetail(rdetail);
			   System.out.println("seq_rm: "+seq_rm);
			   rbiz.insertsafety(rsafe);
			   System.out.println("seq_rm: "+seq_rm);
			   rbiz.insertrule(rule);
			   System.out.println("seq_rm: "+seq_rm);
			   rbiz.insertintro(intro);
			   System.out.println("seq_rm: "+seq_rm);
			   int i =0;
			for (MultipartFile mf : fileList) {
				i++;
				String name = ((LoginDto)session.getAttribute("login")).getId()+"roomimage"+i+".jpg";
				String originFileName = mf.getOriginalFilename(); // 원본 파일 명
				long fileSize = mf.getSize(); // 파일 사이즈

				System.out.println("originFileName : " + originFileName);
				System.out.println("fileSize : " + fileSize);

				String safeFile = path + System.currentTimeMillis() + originFileName;
				
				 InputStream inputStream = null;
				 OutputStream outputStream = null;
				try {
					inputStream = mf.getInputStream();
					
					path = WebUtils.getRealPath(request.getSession().getServletContext(), "/storage/rooms");
					System.out.println("업로드 될 실제 경로: "+path);
					
					String path2 = path.substring(0,path.indexOf(".metadata"))+"final_proj\\src\\main\\webapp\\storage\\rooms";
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
					byte[] b = new byte[(int)mf.getSize()];
					
					while((read=inputStream.read(b)) != -1) {
						outputStream.write(b,0,read);
					}
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				photo.setP_path(name);
				session.setAttribute("p_path", p_path);
				
				String P_path = (String)session.getAttribute("p_path");			
				int seq_intro = rbiz.selectintroseq(intro);
				   System.out.println("seq_intro: "+seq_intro);
				    photo.setSeq_intro(seq_intro);
				   rbiz.insertphoto(photo);
			}
	  
		   
//          int seq_intro = rbiz.selectintroseq(intro);
//		   System.out.println("seq_intro: "+seq_intro);
//		    photo.setSeq_intro(seq_intro);
//		   rbiz.insertphoto(photo);
		  
		return "main";
		
	}
	
}

