50.times do |n|
    name = Faker::Games::Pokemon.name
    email = Faker::Internet.email
    created_at = Faker::Date
    updated_at =Faker::Date
    image =Faker::IDNumber.valid
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 create_at: create_at,
                 updated_at: updated_at,
                 image: image
                 )
  end

  