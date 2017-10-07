class User < ApplicationRecord
  include Clearance::User
  belongs_to :organisation

  validates :email, presence: true, uniqueness: true
end
