# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# if there are no users at all, create one
if User.all.empty?
  User.create! do |u|
    u.email = 'admin@pdmp.example.org'
    u.password = u.password_confirmation = 'admin123'
    puts "admin account bootstrapped: #{u.email}/#{u.password}"
  end
end
