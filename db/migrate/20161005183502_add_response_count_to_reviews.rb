class AddResponseCountToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :responses_count, :integer
  end
end
