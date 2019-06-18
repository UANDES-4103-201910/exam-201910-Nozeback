class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :variant
      t.integer :price
      t.string :producttype
      t.text :shortdesc
      t.text :largedesc

      t.timestamps
    end
  end
end
