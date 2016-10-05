class User < ApplicationRecord
  # Direct associations

  has_many   :owners,
             :dependent => :nullify

  has_many   :ratings,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  has_many   :properties,
             :through => :owners,
             :source => :restaurant

  has_many   :restaurants,
             :through => :ratings,
             :source => :restaurant

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
