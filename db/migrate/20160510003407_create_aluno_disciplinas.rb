class CreateAlunoDisciplinas < ActiveRecord::Migration
  def change
    create_table :aluno_disciplinas do |t|
      t.references :aluno, index: true, foreign_key: true
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
