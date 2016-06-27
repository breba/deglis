package br.com.start.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.start.models.Fornecedor;

public interface FornecedorRepository extends JpaRepository<Fornecedor, String>{

}
