class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.string :nome
      t.string :sobrenome
      t.string :senha

      t.timestamps null: false
    end
  end
end
