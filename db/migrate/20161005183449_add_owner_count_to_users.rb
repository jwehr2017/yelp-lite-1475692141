class AddOwnerCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :owners_count, :integer
  end
end
