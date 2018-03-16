# An organisation is the top level, a parent to many children users
class Organisation < ApplicationRecord
  has_many :users
  has_many :pictures

  enum status: { active: 0, archived: 1 }
end
