# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno' do 

	scenario 'incluir aluno' do
		visit new_aluno_path
		preencher_e_verificar_aluno
	end

	scenario 'alterar aluno' do
		aluno = FactoryGirl.create(:aluno)
		visit edit_aluno_path(aluno)
		preencher_e_verificar_aluno	
	end

	scenario 'excluir aluno' do
		aluno = FactoryGirl.create(:aluno)
		visit alunos_path
		click_link 'Excluir'
	end

	def preencher_e_verificar_aluno
		fill_in 'Nome', :with => 'Matheus'
		fill_in 'Sobrenome', :with => 'Cruz'
		fill_in 'Matricula', :with => '2013'
		fill_in 'Senha', :with => 'x'
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Matheus'
		expect(page).to have_content 'Sobrenome: Cruz'
		expect(page).to have_content 'Matricula: 2013'
		expect(page).to have_content 'Senha: x'
	end
	
end