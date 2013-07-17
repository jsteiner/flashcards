class Deck < ActiveRecord::Base
  has_many :cards
  belongs_to :user
  attr_accessible :name

  def to_param
    name
  end

  def as_json(options={})
    { name: name }
  end
end
