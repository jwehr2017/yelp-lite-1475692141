class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :review_id
      t.integer :owners_id

      t.timestamps

    end
  end
end
