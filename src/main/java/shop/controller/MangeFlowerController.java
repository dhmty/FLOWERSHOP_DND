package shop.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import shop.bean.UploadFile;
import shop.dao.CategoryDAO;
import shop.dao.ColorDAO;
import shop.dao.ManageFlowerDAO;
import shop.entity.Category;
import shop.entity.Color;
import shop.entity.Flower;

@Controller
@RequestMapping("/admin/flower")
public class MangeFlowerController {
	@Autowired
	ManageFlowerDAO manageFlowerDAO;
	
	@Autowired
	ColorDAO colorDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	@Qualifier("uploadfile")
	UploadFile baseUploadfile;
	
	@Autowired
	ServletContext context;
	
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String home(ModelMap model) {
		model.addAttribute("listFlower", manageFlowerDAO.getListFlower());
		return "admin/flower";
	}
	
	@ModelAttribute("flowerNew")
	public Flower flowerNew() {
		return new Flower();
	}
	@ModelAttribute("flowerEdit")
	public Flower flowerEdit() {
		return new Flower();
	}
	
	@ModelAttribute("getListCL")
	public List<Color> getListColors() {
		List<Color> list = colorDAO.getListColor();
		return list;
	}
	@ModelAttribute("getListCA")
	public List<Category> getListCategory() {
		List<Category> list = categoryDAO.getListCategory();
		return list;
	}
	
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insert(ModelMap model,   @ModelAttribute("flowerNew") Flower flowerNew, @RequestParam("photo") MultipartFile photo,   BindingResult errors) {
		model.addAttribute("them_saidinhdang", errors.hasErrors());
		model.addAttribute("flowerNew", flowerNew);
		
		if(flowerNew.getName().trim().length() == 0) {
			errors.rejectValue("name", "flowerNew", "Vui lòng nhập họ tên");
		}
		if(flowerNew.getPrice() == null) {
			errors.rejectValue("price", "flowerNew", "Vui lòng chọn giá");
		}
		if(errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin!");
			return home(model);
		}
		try {
			String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
			 String fileName = date + photo.getOriginalFilename();
			String photoPath = baseUploadfile.basePath + File.separator + fileName;
			photo.transferTo(new File(photoPath));
			flowerNew.setImage(fileName);
			/*flowerNew.setCategories(categories);
			flowerNew.setColors(colors);
			@RequestParam("colors") List<Color> colors,  @RequestParam("categories") List<Category> categories,*/
			model.addAttribute("insert", manageFlowerDAO.save(flowerNew));
			return home(model);
		} catch (Exception e) {
			// TODO: handle exception	
			model.addAttribute("insert", false);
			model.addAttribute("flowerNew", flowerNew);
			return home(model);
		}
	}
	
	@RequestMapping(value="edit/{id}", method=RequestMethod.GET)
	public String showFormEdit(ModelMap model, @ModelAttribute("flowerEdit") Flower flowerEdit, @PathVariable String id) {
		model.addAttribute("formEdit", true);
		model.addAttribute("flowerEdit", manageFlowerDAO.getFlowerById(id));
		System.out.println(manageFlowerDAO.getFlowerById(id));
		return home(model);
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("flowerEdit") Flower flowerEdit, @RequestParam("photo") MultipartFile photo, BindingResult errors) {
		model.addAttribute("sua_saidinhdang", errors.hasErrors());
		model.addAttribute("flowerEdit", flowerEdit);
		if(flowerEdit.getName().trim().length() == 0) {
			errors.rejectValue("name", "flowerNew", "Vui lòng nhập họ tên");
		}
		if(flowerEdit.getPrice() == null) {
			errors.rejectValue("price", "flowerNew", "Vui lòng chọn giá");
		}
		if(errors.hasErrors()) {
			return home(model);
		}
		if(photo.isEmpty()) {
			model.addAttribute("update", manageFlowerDAO.update(flowerEdit));
			model.addAttribute("flowerEdit", new Flower());
			return home(model);
		} else {
			try {
				String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
				String fileName = date + photo.getOriginalFilename();
				String photoPath = baseUploadfile.basePath + File.separator + fileName;
				photo.transferTo(new File(photoPath));
				flowerEdit.setImage(fileName);
				model.addAttribute("update", manageFlowerDAO.update(flowerEdit));
				model.addAttribute("flowerEdit", new Flower());
				return home(model);
			} catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("update", false);
				model.addAttribute("flowerEdit", flowerEdit);
				return home(model);
			}
		}
	}
	
	@RequestMapping(value = "delete", method=RequestMethod.POST)
	public String delete(ModelMap model, @RequestParam("id") Integer id) {
		System.out.println("id = " + id);
		Flower f = new Flower();
		f.setId(id);
		model.addAttribute("delete", manageFlowerDAO.delete(f));
		return home(model);
	}
}
