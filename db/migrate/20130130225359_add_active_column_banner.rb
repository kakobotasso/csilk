class AddActiveColumnBanner < ActiveRecord::Migration
  def change
  	add_column :banners, :ativo, :integer, :default => 1
  end
end
