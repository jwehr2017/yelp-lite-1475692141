class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :neighborhood
      t.integer :total_stars
      t.integer :total_reviews
      t.integer :price
      t.string :latitude
      t.string :longitude
      t.string :cover_image
      t.string :description

      t.timestamps

    end
  end
end
