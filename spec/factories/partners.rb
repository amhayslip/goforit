# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :partner do
    first_name "MyString"
    last_name "MyString"
    email_address "MyString"
    phone_number "MyString"
    goal_id 1
  end
end
