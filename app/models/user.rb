class User < ApplicationRecord
  has_many :lists
  has_many :items, through: :lists

  def full_name
    object.full_name
  end
end
