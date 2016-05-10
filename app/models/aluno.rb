class Aluno < ActiveRecord::Base
	has_many :aluno_disciplinas
end
