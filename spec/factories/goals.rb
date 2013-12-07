# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    user_id 1
    title "MyString"
    deadline "2013-12-07"
    description "MyText"
    goal_pic ""
  end
end
