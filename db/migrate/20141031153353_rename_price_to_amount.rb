class RenamePriceToAmount < ActiveRecord::Migration
  def change
  	rename_column :products, :price, :amount
  end
end
