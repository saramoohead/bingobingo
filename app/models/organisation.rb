# An organisation is the top level, a parent to many children users

class Organisation < ApplicationRecord
  has_many :users

  validates :code, presence: true, uniqueness: true

  enum status: { active: 0, archived: 1 }
  enum organisation_type: { school_charity: 0, charity: 1, school: 2 }
end
