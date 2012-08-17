# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.find_or_create_by_firstname_and_lastname(:firstname => "Johny", :lastname => "Flow")
Customer.find_or_create_by_firstname_and_lastname(:firstname => "Rajagopalan", :lastname => "Bhavani Shankar")
Customer.find_or_create_by_firstname_and_lastname(:firstname => "Andrew", :lastname => "Chung")
Customer.find_or_create_by_firstname_and_lastname(:firstname => "Mike", :lastname => "Smith")
