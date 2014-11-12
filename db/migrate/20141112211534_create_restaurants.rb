class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :open_hour
      t.integer :close_hour
      t.integer :capacity

      t.timestamps
    end
  end
end
