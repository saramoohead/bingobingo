# a single user for authentication and ownership purposes
class User < ApplicationRecord
  include Clearance::User
  belongs_to :organisation
  has_many :pictures

  validates :email, presence: true, uniqueness: true

  enum status: { active: 0, archived: 1 }
end
