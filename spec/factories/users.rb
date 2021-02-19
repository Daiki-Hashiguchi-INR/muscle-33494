FactoryBot.define do
  factory :user do
    nickname {Faker::Name.last_name}
    email {Faker::Internet.free_email}

    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    profile {"学生です"}
    goal {"５KG減量"}
  end
end