class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :matricula
      t.string :nome
      t.string :sobrenome
      t.string :senha

      t.timestamps null: false
    end
  end
end
