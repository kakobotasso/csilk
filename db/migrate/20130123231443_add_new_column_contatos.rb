class AddNewColumnContatos < ActiveRecord::Migration
  def change
  	add_column :contatos, :novo, :integer, :default => 1
  end
end
