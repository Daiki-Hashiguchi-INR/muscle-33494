FactoryBot.define do
  factory :muscle do
    association :user

    after(:build) do |muscle|
      muscle.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    title {"ヤッホー"}
    explain {"これはきついよ"}
    part_id { 2 }
    difficult_id { 2 }
    daytime { "2021-02-09 08:35:00" }

  end
end