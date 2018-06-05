FactoryBot.define do
  factory :user do
    username "ConiMarchant"
    email "cbmarchant@miuandes.cl"
    password "abc123"
  end
  factory :message do
    user_id 1
    date "2017-05-05"
    content "first factory"
  end
# Add other factories in here
end