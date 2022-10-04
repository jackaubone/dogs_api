class Dog < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
