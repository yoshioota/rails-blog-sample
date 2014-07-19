# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    user nil
    title "MyString"
    body_source "MyText"
    body "MyText"
    aasm_state "MyString"
  end
end
