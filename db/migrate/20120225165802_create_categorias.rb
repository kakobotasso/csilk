class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nome, :null => false
      t.string :slug, :unique => true, :null => false

      t.timestamps
    end
  end
end
