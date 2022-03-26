class Book < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  belongs_to :user
  has_one_attached :image, :dependent => :destroy
end
