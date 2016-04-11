class RemoveBairroFimIdFromLogradouros < ActiveRecord::Migration
  def change
    remove_column :logradouros, :bairro_fim_id, :string
  end
end
