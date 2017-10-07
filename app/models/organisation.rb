class Organisation
  has_many :users

  validates :code, presence: true, uniqueness: true
end
