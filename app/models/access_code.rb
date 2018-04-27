# Five access codes per organisation lets users access the upload pictures area
class AccessCode < ApplicationRecord
  belongs_to :organisation
  belongs_to :picture
end
