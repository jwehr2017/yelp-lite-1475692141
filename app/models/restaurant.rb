class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :restaurant_tags,
             :dependent => :destroy

  has_many   :ratings,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :total_reviews, :numericality => true

end
