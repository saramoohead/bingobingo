FactoryBot.define do
  factory :picture do
    organisation
    short_description "Snake"

    sequence :name do |n|
      "INIT#{n}"
    end
    sequence :square_image do |n|
      "red_snake_INIT#{n}.jpg"
    end
  end
end
