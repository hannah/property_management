FactoryGirl.define do
  factory :owner do
    first_name 'Oscar'
    last_name 'TheGrouch'
    sequence(:email) {|n| "test#{n}@email.com"}
  end
end
