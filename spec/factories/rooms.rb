FactoryBot.define do
  factory :room do
    text { 'text' }
    association :user
    association :group

    after(:build) do |room|
      room.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end