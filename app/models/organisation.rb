# An organisation is the top level, a parent to many children users
class Organisation < ApplicationRecord
  has_many :users
  has_many :pictures
  has_many :access_codes

  enum status: { active: 0, archived: 1 }

  def access_code_string
    access_codes.sort.map(&:picture_id).join("")
  end
end
