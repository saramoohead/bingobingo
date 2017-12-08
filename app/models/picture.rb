# stores uploaded pictures that are to be used in the bingo boards
class Picture < ApplicationRecord
  belongs_to :user
  mount_uploader :square_image, SquareImageUploader
end
