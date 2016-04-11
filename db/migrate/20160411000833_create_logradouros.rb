class CreateLogradouros < ActiveRecord::Migration
  def change
    create_table :logradouros do |t|
      t.string :nome
      t.string :cep
      t.string :num_inicio
      t.string :num_fim

      t.timestamps null: false
    end
  end
end
