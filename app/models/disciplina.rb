class Disciplina < ActiveRecord::Base
  belongs_to :professor
  belongs_to :aluno_disciplinas
  has_many :aluno_disciplinas
end
