package com.web.Ateamproject;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import com.web.service.forum.ForumService;
import com.web.vo.forum.Criteria;
import com.web.vo.forum.ForumVO;




@Controller
public class ForumController {


	private static final Logger logger = LoggerFactory.getLogger(ForumController.class);
	
	private final ForumService forumService;
	
	@Inject
	public ForumController(ForumService forumService) {
	this.forumService = forumService;
	}
	
	
	 // ?ì±Î°? ?éò?ù¥Ïß? ?ù¥?èô
    @RequestMapping(value = "/forumboard", method = RequestMethod.GET)
    public String forumboard() {

        

        return "/Forum/forumboard";
    }
    
 // ?ì±Î°? Ï≤òÎ¶¨
    
    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public String write(ForumVO forumVO, MultipartHttpServletRequest mpRequest, RedirectAttributes redirectAttributes) throws Exception {
    	
//    	
//    	System.out.println(forumVO.getPnum());
//    	//System.out.println(forumVO.getMnum());
//    	//System.out.println(forumVO.getId());
//    	System.out.println(forumVO.getPtitle());
//    	System.out.println(forumVO.getPcontent());
//    	System.out.println(forumVO.getFile().getOriginalFilename());
    	
    
    	forumService.create(forumVO, mpRequest);
    	
        redirectAttributes.addFlashAttribute("msg", "regSuccess");
        
        
        return "redirect:/forum";
    }
    
  //Î™©Î°ù ?éò?ù¥Ïß? (?éò?ù¥Ïß? Ï∂îÍ?)
	
  	@RequestMapping (value="/forum", method = RequestMethod.GET)
  	public String forum(Model model, Criteria cri) throws Exception{
  		
  		

  		model.addAttribute("forums", forumService.getListPaging(cri));
  		int total = forumService.getTotal();
  		
  		
  		Criteria criteria = new Criteria(cri, total);
  		model.addAttribute("Criteria", criteria);
  		
  		
  		return "/Forum/forum";
  	}
  	
  	
 // Î™©Î°ù ?éò?ù¥Ïß? ?ù¥?èô
//    @RequestMapping(value = "/forum", method = RequestMethod.GET)
//    public String forum(Model model) throws Exception {
//
//        logger.info("list ...");
//        
//       
//        
//        model.addAttribute("forums", forumService.listAll());
//      
//
//        return "/Forum/forum";
//    }
    
 // ?ÉÅ?Ñ∏ ?éò?ù¥Ïß? ?ù¥?èô
    @RequestMapping(value = "/forumwindowUser", method = RequestMethod.GET)
    public String forumwindowUser(ForumVO forumVO, @RequestParam("pnum") String pnum, Model model) throws Exception {

        
        model.addAttribute("forum", forumService.read(pnum));
        
       
        
        List<Map<String, Object>> fileList = forumService.selectFileList(forumVO.getPnum());
        model.addAttribute("file", fileList);
        
        
        
        return "/Forum/forumwindowUser";
    }
    
 // ?àò?†ï ?éò?ù¥Ïß? ?ù¥?èô + ?åå?ùº
	
	  @RequestMapping(value = "/forumboardUpdate", method = RequestMethod.GET)
	  public String forumboardUpdate(@RequestParam("pnum") String pnum, Model model) throws Exception {
	  
	  
	  model.addAttribute("pnum", forumService.read(pnum));
	  
	  List<Map<String, Object>> fileList = forumService.selectFileList(pnum);
	  model.addAttribute("file", fileList);
	 
	   return "/Forum/forumboardUpdate";
	   
	  }
	 
    
 // ?àò?†ï Ï≤òÎ¶¨
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(ForumVO forumVO, 
    					RedirectAttributes redirectAttributes,
    					@RequestParam(value="fileNoDel[]")String[] files,
    					@RequestParam(value="fileNameDel[]") String[] fileNames,
    					MultipartHttpServletRequest mpRequest) throws Exception {
    	
    	
    	
    	//System.out.println(files[0]);
        forumService.update(forumVO, fileNames, files, mpRequest);
        
        redirectAttributes.addFlashAttribute("msg", "modSuccess");

        return "redirect:/forum";
    }
    
 // ?Ç≠?†ú Ï≤òÎ¶¨
    @RequestMapping(value = "/remove", method = RequestMethod.POST)
    public String remove(ForumVO forumVO,  @RequestParam("pnum") String pnum, RedirectAttributes redirectAttributes) throws Exception {

        
        forumService.delete(forumVO.getPnum());
        redirectAttributes.addFlashAttribute("msg", "delSuccess");

        return "redirect:/forum";
    }
    
    @RequestMapping(value="/fileDown")
    public void fileDown(@RequestParam Map<String, Object>map, HttpServletResponse response) throws Exception{
    	Map<String, Object> resultMap = forumService.selectFileInfo(map);
    	String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
    	String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
    	
    	//?åå?ùº ???û•?ñà?çò ?úÑÏπòÏóê?Ñú Ï≤®Î??åå?ùº?ùÑ ?ùΩ?ñ¥ BYTE[]?òï?ãù?úºÎ°? Î≥??ôò
    	byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\mp\\file\\"+storedFileName));
    	
    	response.setContentType("application/octet-stream");
    	response.setContentLength(fileByte.length);
    	response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
    	response.getOutputStream().write(fileByte);
    	response.getOutputStream().flush();
    	response.getOutputStream().close();
    
    }
    
    

 
}    


// ?àò?†ï ?éò?ù¥Ïß? ?ù¥?èô
	/*
	 * @RequestMapping(value = "/forumboardUpdate", method = RequestMethod.GET)
	 * public String forumboardUpdate(@RequestParam("pnum") String pnum, Model
	 * model) throws Exception {
	 * 
	 * 
	 * model.addAttribute("pnum", forumService.read(pnum));
	 * 
	 * return "/Forum/forumboardUpdate"; }
	 */
   
// ?àò?†ï Ï≤òÎ¶¨
//   @RequestMapping(value = "/update", method = RequestMethod.POST)
//   public String update(ForumVO forumVO, RedirectAttributes redirectAttributes) throws Exception {
//
//       
//       forumService.update(forumVO);
//       redirectAttributes.addFlashAttribute("msg", "modSuccess");
//
//       return "redirect:/forum";
//   }
