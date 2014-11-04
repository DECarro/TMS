FactoryGirl.define do
  factory :product do
    name 'Equipment'
    amount '500'
    cost '400'
   
  end  
end


FactoryGirl.define do
  factory :user do
    email 'google@google.com'
    password '12345678'

  end  
end