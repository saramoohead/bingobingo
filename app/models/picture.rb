# stores uploaded pictures that are to be used in the bingo boards
class Picture < ApplicationRecord
  belongs_to :organisation
  mount_uploader :square_image, SquareImageUploader

  validates :name, presence: true
  validates :short_description, presence: true
  validates :square_image, file_size: { less_than: 1.megabytes }
end
