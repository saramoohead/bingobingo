FactoryBot.define do
  factory :access_code do
    organisation

    before(:create) do |evaluator|
      create(:picture, id: evaluator.picture_id, organisation_id: evaluator.organisation.id)
    end
  end
end
