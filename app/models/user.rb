class User < ApplicationRecord
  include Clearance::User
  belongs_to :organisation

  validates :email, presence: true, uniqueness: true

  enum status: { active: 0, archived: 1 }
end
