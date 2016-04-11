class RemoveNumFimFromLogradouros < ActiveRecord::Migration
  def change
    remove_column :logradouros, :num_fim, :string
  end
end
