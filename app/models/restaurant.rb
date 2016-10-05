class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :owners,
             :dependent => :nullify

  has_many   :restaurant_tags,
             :dependent => :destroy

  has_many   :ratings,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  has_many   :customers,
             :through => :ratings,
             :source => :user

  has_many   :tags,
             :through => :restaurant_tags,
             :source => :tags

  # Validations

  validates :total_reviews, :numericality => true

end
