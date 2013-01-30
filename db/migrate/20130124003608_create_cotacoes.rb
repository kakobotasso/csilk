class CreateCotacoes < ActiveRecord::Migration
  def change
    create_table :cotacoes do |t|
      t.string :cnpj
      t.integer :estado
      t.string :email
      t.string :telefone
      t.integer :forma_contato
      t.integer :produto_id
      t.integer :novo, :default => 1

      t.timestamps
    end
  end
end
