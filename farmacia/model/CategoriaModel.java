package com.generation.farmacia.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_categoria")
public class CategoriaModel {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	@Size(min = 10, max = 100)
	private String idade;
	
	@NotNull
	@Size(min = 10, max = 1000)
	private String uso;
	
	@AssertTrue
	private Boolean receita;
	
	@AssertTrue
	private Boolean promocao;
	
	@OneToMany(mappedBy = "categoriaModel", cascade = CascadeType.REMOVE)
	@JsonIgnoreProperties("categoriaModel")
	private List <ProdutoModel> produtoModel;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}

	public String getUso() {
		return uso;
	}

	public void setUso(String uso) {
		this.uso = uso;
	}

	public Boolean getReceita() {
		return receita;
	}

	public void setReceita(Boolean receita) {
		this.receita = receita;
	}

	public Boolean getPromocao() {
		return promocao;
	}

	public void setPromocao(Boolean promocao) {
		this.promocao = promocao;
	}

	public List<ProdutoModel> getProduto() {
		return produtoModel;
	}

	public void setProduto(List<ProdutoModel> produto) {
		this.produtoModel = produto;
	}
	
	

	

}
