require 'faker'

zip_codes = ['43068', '32034', '33558', '07631', '08360', '33905', '30605']

25.times do 
    username = Faker::Games::ElderScrolls.unique.first_name
    email = Faker::Internet.unique.email
    password = BCrypt::Password.create('password', cost: 4)
    location = zip_codes.sample

    User.create(username: username, email: email, password_digest: password, location: location)
end