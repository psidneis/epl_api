FactoryGirl.define do
  factory :job do
    sequence(:partner_id)
    sequence(:title){ |n| "My Job #{n}" }
    sequence(:category_id)
    expires_at Time.now + 2.days
    status 0
  end
end
