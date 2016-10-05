class AddOwnerCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :owners_count, :integer
  end
end
