# coding: utf-8

require 'spec_helper'

feature 'gerenciar aula' do 

	scenario 'incluir aula' do
		criar_disciplina
		visit new_aula_path
		preencher_e_verificar_aula
	end

	scenario 'alterar aula' do
		criar_disciplina
		aula = FactoryGirl.create(:aula)
		visit edit_aula_path(aula)
		preencher_e_verificar_aula
	end

	scenario 'excluir aula' do
		criar_disciplina
		visit new_aula_path
		preencher_e_verificar_aula
		visit disciplinas_path
		click_link 'Excluir'
	end

	def preencher_e_verificar_aula
		fill_in 'Data abertura', :with => '01/05/2016'
		fill_in 'Conteudo', :with => 'Rails - capybara'
		select "Programacao OO web", from: 'Disciplina'
		click_button 'Salvar'
		expect(page).to have_content 'Data abertura: 01/05/2016'
		expect(page).to have_content 'Conteudo: Rails - capybara'
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

	def criar_disciplina
		criar_professor
		visit new_disciplina_path
		preencher_e_verificar_disciplina
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