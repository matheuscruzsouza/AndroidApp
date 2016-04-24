# coding: utf-8

require 'spec_helper'

feature 'gerenciar professor' do 

	scenario 'incluir professor' do
		visit new_professor_path
		preencher_e_verificar_professor
	end

	scenario 'alterar professor' do
		professor = FactoryGirl.create(:professor)
		visit edit_professor_path(professor)
		preencher_e_verificar_professor
	end

	scenario 'excluir professor' do
		professor = FactoryGirl.create(:professor)
		visit professores_path
		click_link 'Excluir'
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
		expect(page).to have_content 'Senha: x'
	end
	
end