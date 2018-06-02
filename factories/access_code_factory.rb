FactoryBot.define do
  factory :access_code do
    organisation
    picture { create(:picture, organisation: organisation) }
  end
end
