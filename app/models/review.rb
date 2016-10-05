class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :restaurant,
             :counter_cache => :ratings_count

  # Indirect associations

  # Validations

  validates :rating_stars, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0 }

end
