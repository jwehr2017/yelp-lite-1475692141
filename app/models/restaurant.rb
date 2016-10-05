class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :ratings,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :total_reviews, :numericality => true

end
