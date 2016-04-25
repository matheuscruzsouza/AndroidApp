class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.string :data_abertura
      t.string :conteudo
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
