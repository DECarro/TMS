FactoryGirl.define do
  factory :client do
    name 'Google'
    company_size_id 1
    account { FactoryGirl.build(:setup_account) }
  end  
end


FactoryGirl.define do
  factory :user do
    email 'google@google.com'
    password 'pass'
  end  
end