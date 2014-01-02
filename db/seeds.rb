# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
# puts 'ROLES'
# YAML.load(ENV['ROLES']).each do |role|
#   Role.find_or_create_by_name(role)
#   puts 'role: ' << role
# end
# puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
# puts 'user: ' << user.name
# user.add_role :admin


User.destroy_all
Goal.destroy_all
Partner.destroy_all
puts "Destroyed all Users, Goals and Partners."

I18n.enforce_available_locales = false

bill_clinton = User.create({name: "Bill Clinton", email: "Bill@Billsplace.com", password: "password", 
    profile_pic: "http://0.tqn.com/d/politicalhumor/1/0/h/a/3/clinton-damon-stimulus.jpg",
    location: "Clintonville", website_url: "http://www.whitehouse.gov", 
    description: "I am Bill Clinton and I am going for it!" 
  })

puts "Created user Bill Clinton."


lose_weight = bill_clinton.goals.create(title: "Get Ripped For Hillary", description: "I've been thinking a lot lately about my body and how I want it to be an animal for the long haul, especially for my marriage.  Get ripped, GOFORIT!", deadline: "2014-04-04", goal_pic: "http://a.abcnews.go.com/images/Entertainment/gty_bill_clinton_nt_111027_ssv.jpg", user_id: 1)
lose_more_weight = bill_clinton.goals.create(title: "Get Ripped For Hillary again", description: "I've been thinking a lot lately about my body and how I want it to be an animal for the long haul, especially for my marriage.  Get ripped, GOFORIT!", deadline: "2014-04-04", goal_pic: "http://dakiniland.files.wordpress.com/2012/08/shirtless.jpg?w=590", user_id: 1)

puts "Created two goals for Bill."


al_gore = lose_weight.partners.create(first_name: "Al", last_name: "Gore", phone_number: "281-620-9011", goal_id: 1, user_id: 1, email_address: "al@alsplace.com", frequency: "Every time Bill is lonely")

puts "Created Al for Bill!"





















