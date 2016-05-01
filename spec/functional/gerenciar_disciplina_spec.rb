# coding: utf-8

require 'spec_helper'

feature 'gerenciar disciplina' do 

	scenario 'incluir disciplina' do
		criar_professor
		visit new_disciplina_path
		preencher_e_verificar_disciplina
	end

	scenario 'alterar disciplina' do
		criar_professor
		disciplina = FactoryGirl.create(:disciplina)
		visit edit_disciplina_path(disciplina)
		preencher_e_verificar_disciplina
	end

	scenario 'excluir disciplina' do
		criar_professor
		visit new_disciplina_path
		preencher_e_verificar_disciplina
		visit disciplinas_path
		click_link 'Excluir'
	end

	def preencher_e_verificar_disciplina
		fill_in 'Descricao', :with => 'Programacao OO web'
		select "Matheus", from: 'Professor'
		click_button 'Salvar'
		expect(page).to have_content 'Descricao: Programacao OO web'
	end

	def criar_professor
		professor = FactoryGirl.create(:professor)
		visit new_professor_path
		preencher_e_verificar_professor
	end

	def preencher_e_verificar_professor
		fill_in 'Nome', :with => 'Matheus'
		fill_in 'Sobrenome', :with => 'Cruz'
		fill_in 'Matricula', :with => '2013'
		fill_in 'Senha', :with => 'x'
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Matheus'
		expect(page).to have_content 'Sobrenome: Cruz'
		expect(page).to have_content 'Matricula: 2013'
	end
	
end