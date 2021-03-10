class Category < ApplicationRecord
  has_many :ideas
  validates :name, presence:true
  validates :name, length: {minimum: 4}
end
