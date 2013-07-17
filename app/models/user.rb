class User < ActiveRecord::Base
  has_many :decks
  attr_accessible :email

  validates :email, presence: true
end
