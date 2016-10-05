class Tag < ApplicationRecord
  # Direct associations

  has_many   :restaurant_tags,
             :foreign_key => "tags_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
