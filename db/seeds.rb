#
#   The following template is adapted from Austin O
#   Availability:
#		https://gist.github.com/hernamesbarbara/1864672
#

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create an admin user to User model
admin=User.new({ first_name: "Admin", last_name: "User", dob: '2018-12-15', gender: 'F', email: 'admin@gmail.com', password: 'password', password_confirmation: 'password'})

admin.toggle!(:admin)

if admin.valid?
  admin.save()
  puts "Admin created successfully!"

elsif admin.errors.any?
  admin.errors.full_messages.each do |msg|
    puts msg
  end
else
  puts "****NOT VALID****"
end
