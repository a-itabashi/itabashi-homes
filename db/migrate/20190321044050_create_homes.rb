class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :price
      t.string :address
      t.integer :year
      t.text :content
      t.string :line_1
      t.string :station_1
      t.integer :walk_a
      t.string :line_2
      t.string :station_2
      t.integer :walk_2

      t.timestamps
    end
  end
end
