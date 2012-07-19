class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome, :null => false
      t.string :email, :null => false
      t.string :telefone, :null => false
      t.string :assunto, :null => false
      t.text :mensagem, :null => false

      t.timestamps
    end
  end
end
