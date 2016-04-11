class RemoveNumInicioFromLogradouros < ActiveRecord::Migration
  def change
    remove_column :logradouros, :num_inicio, :string
  end
end
