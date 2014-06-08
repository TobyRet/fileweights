FactoryGirl.define do
  factory :user do
    email "toby.retallick@gmail.com"
    password ENV['WORKSHARE_PASS']
  end
end