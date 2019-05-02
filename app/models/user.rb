class User < ApplicationRecord
  has_many :lists
  has_many :items, through: :lists

  def serialize
    hash = {}
    attributes.each{ |key, val| hash[key] = val }
    hash
  end

end
