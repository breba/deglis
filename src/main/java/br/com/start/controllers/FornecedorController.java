package br.com.start.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.start.models.Fornecedor;
import br.com.start.repositories.FornecedorRepository;

@Controller
@RequestMapping("/fornecedor")
public class FornecedorController {
	
	@Autowired
	FornecedorRepository fornecedorRepository;
	
	@RequestMapping("/form")
	public ModelAndView form(Fornecedor fornecedor){
		return new ModelAndView("fornecedor/cadastroFornecedor");
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView save(Fornecedor fornecedor){
		fornecedorRepository.save(fornecedor);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/listar")
	public ModelAndView listFornecedores(Fornecedor fornecedor){
		ModelAndView md = new ModelAndView("mercadoria/cadastroMercadoria");
		md.addObject("fornecedores", fornecedorRepository.findAll());
		return md;
		
	}
}
