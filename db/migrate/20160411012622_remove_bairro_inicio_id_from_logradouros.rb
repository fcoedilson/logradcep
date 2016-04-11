class RemoveBairroInicioIdFromLogradouros < ActiveRecord::Migration
  def change
    remove_column :logradouros, :bairro_inicio_id, :string
  end
end
