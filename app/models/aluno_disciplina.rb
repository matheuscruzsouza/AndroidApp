class AlunoDisciplina < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :disciplina
  has_many :disciplinas
end
