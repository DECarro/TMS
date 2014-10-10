class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :manufacture_part
      t.string :tms_id
      t.text :quick_overview
      t.text :read_more
      t.text :description

      t.timestamps
    end
  end
end
