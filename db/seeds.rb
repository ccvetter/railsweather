require 'faker'

# ActiveRecord::Base.connection.tables.each do |t|
#     ActiveRecord::Base.connection.reset_pk_sequence!(t)
# end

zip_codes = ['43068', '32034', '33558', '07631', '08360', '33905', '30605']

25.times do 
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    location = zip_codes.sample

    User.create(first_name: first_name, last_name: last_name, location: location)
end