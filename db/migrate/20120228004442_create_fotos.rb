class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.references :produto

      t.timestamps
    end
    add_index :fotos, :produto_id
  end
end
