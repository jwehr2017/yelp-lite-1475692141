class Restaurant < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :total_reviews, :numericality => true

end
