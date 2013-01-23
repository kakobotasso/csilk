class AddNewColumnFornecedor < ActiveRecord::Migration
  def change
  	add_column :fornecedores, :novo, :integer, :default => 1
  end
end
