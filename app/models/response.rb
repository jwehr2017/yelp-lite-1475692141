class Response < ApplicationRecord
  # Direct associations

  belongs_to :review,
             :counter_cache => true

  # Indirect associations

  # Validations

end
