class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.string :color
      t.integer :size
      t.integer :price
      t.integer :category
      t.text :description

      t.timestamps
    end
  end
end
