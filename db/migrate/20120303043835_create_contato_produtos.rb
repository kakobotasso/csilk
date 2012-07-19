class CreateContatoProdutos < ActiveRecord::Migration
  def change
    create_table :contato_produtos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :assunto
      t.text :mensagem
      t.references :produto

      t.timestamps
    end
    add_index :contato_produtos, :produto_id
  end
end
