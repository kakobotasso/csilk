class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :razao_social, :null => false
      t.string :nome_fantasia
      t.string :cnpj
      t.string :nome_contato, :null => false
      t.string :telefone, :null => false
      t.string :celular
      t.string :fax
      t.string :site
      t.string :email, :null => false
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
