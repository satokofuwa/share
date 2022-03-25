50.times do |n|
    name = Faker::Name.name
    email = Faker::Internet.email
    created_at = Faker::Date
    updated_at =Faker::Date
    image =Faker::IDNumber.valid
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 created_at: created_at,
                 updated_at: updated_at,
                 image: image
                 )
  end

  