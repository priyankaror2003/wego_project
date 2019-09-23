class CreateCarParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :car_parkings do |t|
      t.string :car_park_no
      t.string :address
      t.float :x_cord
      t.float :y_cord
      t.string :car_park_type
      t.string :type_of_parking_system
      t.string :short_term_parking
      t.string :free_parking
      t.string :night_parking
      t.integer :free_park_decks
      t.float :gantry_height
      t.text :car_park_basement
      t.timestamps
    end
  end
end
