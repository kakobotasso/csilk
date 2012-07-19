class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :nome
      t.string :link
      t.string :data_pub

      t.timestamps
    end
  end
end
