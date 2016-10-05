class AddResponseCountToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :responses_count, :integer
  end
end
