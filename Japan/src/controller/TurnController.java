package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/japan/")
public class TurnController {
	
//	@RequestMapping("/img")
//    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response){
//		ModelAndView mav = new ModelAndView();
//    	List<String> list = eduService.getEduJson();
//    	mav.addObject("imgstr",list);
//    	mav.setViewName("showimg");
//    	return mav;
//    }
	
	@RequestMapping("turn")
    public ModelAndView turnPage(String page){
		ModelAndView mav = new ModelAndView();
		System.out.println(page);
    	mav.addObject("page",page);
    	mav.setViewName(page);
    	return mav;
    }
}
