package br.com.start.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.start.models.Mercadoria;
import br.com.start.repositories.FornecedorRepository;
import br.com.start.repositories.MercadoriaRepository;

@Controller
@RequestMapping("/mercadoria")
public class MercadoriaController {
	
	@Autowired
	MercadoriaRepository mercadoriaRepository;
	@Autowired
	FornecedorRepository fornecedorRepo;
	
	@RequestMapping("/form")
	public ModelAndView form(Mercadoria mercadoria){
		ModelAndView md = new ModelAndView("mercadoria/cadastroMercadoria");
		md.addObject("fornecedores", fornecedorRepo.findAll());
		return md;
	}
	
	@RequestMapping("/saveMercadoria")
	public ModelAndView save(@ModelAttribute("mercadoria")Mercadoria mercadoria){
		mercadoriaRepository.save(mercadoria);
		return new ModelAndView("redirect:/");
	}
}
