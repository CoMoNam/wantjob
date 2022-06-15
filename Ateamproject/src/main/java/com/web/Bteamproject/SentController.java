package com.web.Bteamproject;

import java.util.List;


import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.service.EstimateService;
import com.web.vo.EstimateVO;

@Controller
public class SentController {

	@Resource(name = "estimateService")
	private EstimateService estimateService;
	
	private static final Logger logger = LoggerFactory.getLogger(SentController.class);
	
	@RequestMapping(value="/sent")
	public String sent(Model model) throws Exception  {
		
		List<EstimateVO> list = estimateService.selectEstimateList();
		 
		  logger.info(list.toString());
		  
		  model.addAttribute("list", list);
		return "/Sent/sent";
	}
	
	 @RequestMapping(value = "/estimateInsert") public String
	  estimateInsert(@ModelAttribute("estimateVO") EstimateVO estimateVO, Model
	  model) {
	  
		 estimateService.insertEstimate(estimateVO);
	  
	  return "redirect:/sent"; }
	 
	
	
	/* 상세보기 */
	 @RequestMapping(value = "/sent_sentinfo",  method=RequestMethod.GET)
	 public String seninfo(Model model,@RequestParam("esnum") String esnum) {
		 model.addAttribute("list", estimateService.sentinfo(esnum));
	 return "Sent/sent-info";
	 }
	/*
	 * @RequestMapping(value="/sent_sentinfo", method=RequestMethod.GET) public
	 * String sent_sentinfo() { return "/Sent/sent-info"; }
	 */
	 
	/* 삭제하기 sent */
	 @GetMapping("delete")
	 public String delete(@RequestParam("esnum")String esnum) {
		 estimateService.deleteSent(esnum);
		 return "redirect:/sent";
	 }
	 

}
