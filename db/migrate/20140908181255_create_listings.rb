class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.string :price
      t.string :decimal

      t.timestamps
    end
  end
end
