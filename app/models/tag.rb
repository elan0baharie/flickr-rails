class Tag < ApplicationRecord
  has_and_belongs_to_many(:photos)

  validates :text, :presence => true
  validates :text, :uniqueness => true
end
