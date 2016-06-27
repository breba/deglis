package br.com.start.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.start.models.Mercadoria;

public interface MercadoriaRepository extends JpaRepository<Mercadoria, Long>{

}
