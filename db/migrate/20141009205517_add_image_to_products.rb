class AddImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_url, :string
    add_column :products, :cost, :decimal
  end
end
