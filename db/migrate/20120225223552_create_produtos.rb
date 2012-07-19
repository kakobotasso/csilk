class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome, :null => false
      t.string :slug, :null => false, :unique => true
      t.text :descricao
      t.integer :nvisitas
      t.integer :ncontatos
      t.references :categoria
      t.string :keywords
      t.string :description

      t.timestamps
    end
    add_index :produtos, :categoria_id
  end
end
