class ChangeColumnsFornecedor < ActiveRecord::Migration
  def change
  	remove_column :fornecedores, :nome_fantasia
  	remove_column :fornecedores, :celular
  	remove_column :fornecedores, :fax
  	remove_column :fornecedores, :site
  	remove_column :fornecedores, :cidade
  	remove_column :fornecedores, :estado
  end
end
