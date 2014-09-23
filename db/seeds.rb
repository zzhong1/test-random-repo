# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(firstname:  "AdminFirstName",
			 lastname: "AdminLastName",
             email: "admin123@example.com",
             password:              "adminpass",
             password_confirmation: "adminpass",
             admin: true)

5.times do |n|
 
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(firstname:  "UserFirstName",
  			   lastname: "UserLastName",
               email: email,
               password:              password,
               password_confirmation: password)
end
Category.create!(name: "Food")
Category.create!(name: "Clothes")
Product.create!(title: "Cake",
				description: "best cake in the world",
				price: 5.0,
				category_id: 1,
				user_id: 1)
Product.create!(title: "Egg",
				description: "best egg in the world",
				price: 3.0,
				category_id: 1,
				user_id: 1)

Product.create!(title: "hat",
				description: "best hat in the world",
				price: 10.0,
				category_id: 2,
				user_id: 1)
Product.create!(title: "pants",
				description: "best pants in the world",
				price: 20.0,
				category_id: 2,
				user_id: 1)
Product.create!(title: "sweater",
				description: "best sweater in the world",
				price: 15.5,
				category_id: 2,
				user_id: 1)
Review.create!(content: "it was nice!",
    		   rating:  4,
               product_id: 1,
    		   user_id: 3)

Review.create!(content: "it was ok!",
    		   rating:  3,
               product_id: 1,
    		   user_id: 4)
Review.create!(content: "it was bad!",
    		   rating:  1,
               product_id: 1,
    		   user_id: 5)
Review.create!(content: "it was so so!",
    		   rating:  2,
               product_id: 1,
    		   user_id: 1)