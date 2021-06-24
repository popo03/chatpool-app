FactoryBot.define do
  factory :user do
    name {Faker::Name.last_name}
    position_id { 2 }
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
  end
end
