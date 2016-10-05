class Owner < ApplicationRecord
  # Direct associations

  has_many   :responses,
             :foreign_key => "owners_id",
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end
