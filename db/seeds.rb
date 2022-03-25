50.times do |n|
    name = Faker::Games::Pokemon.name
    email = Faker::Internet.email
    created_at = 
    updated_at =
    image =
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 create_at: create_at,
                 updated_at: updated_at,
                 image: image
                 )
  end

  