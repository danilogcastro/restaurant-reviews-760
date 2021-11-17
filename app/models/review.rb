class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :content, length: { minimum: 100 }
end
