# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

bob = User.create!(name: "bob")
jane = User.create!(name: "jane")
mark = User.create!(name: "mark")

event1 = Event.create!(held_at: 5.days.from_now, user: bob, address: "123 Main St. Saint Pete, FL 33713")
event2 = Event.create!(held_at: 7.days.from_now, user: jane, address: "1234 Main St. Saint Pete, FL 33713")
event3 = Event.create!(held_at: 14.days.from_now, user: jane, address: "1226 Main St. Saint Pete, FL 33713")
event4 = Event.create!(held_at: 15.days.from_now, user: jane, address: "12 Main St. Saint Pete, FL 33713")
event5 = Event.create!(held_at: 16.days.from_now, user: jane, address: "112 Main St. Saint Pete, FL 33713")
event6 = Event.create!(held_at: 17.days.from_now, user: jane, address: "145 Main St. Saint Pete, FL 33713")
event7 = Event.create!(held_at: 18.days.from_now, user: jane, address: "178 Main St. Saint Pete, FL 33713")
event8 = Event.create!(held_at: 5.days.from_now, user: jane, address: "189 Main St. Saint Pete, FL 33713")
old_event_9 = Event.create!(held_at: 5.days.ago, user: jane, address: "189 Old Street Saint Pete, FL 33713")

meal1 = Meal.create!(chef_user: bob,  name: "Tacos", ingredients: "Flour, other stuff", suggested_price: 2000)
meal2 = Meal.create!(chef_user: jane, name: "Burgers", ingredients: "Meat, other stuff", suggested_price: 500)
meal3 = Meal.create!(chef_user: bob, name: "Chicken", ingredients: "Meat, other stuff", suggested_price: 700)
meal4 = Meal.create!(chef_user: jane, name: "Grilled Burgers", ingredients: "Meat, other stuff", suggested_price: 500)
meal5 = Meal.create!(chef_user: bob, name: "Shrimp", ingredients: "Meat, other stuff", suggested_price: 800)
meal6 = Meal.create!(chef_user: mark, name: "Pasta", ingredients: "Angel Hair, other stuff", suggested_price: 2500)
meal7 = Meal.create!(chef_user: bob, name: "Salad", ingredients: "Spinach, other stuff", suggested_price: 500)
meal8 = Meal.create!(chef_user: jane, name: "Wraps", ingredients: "Meat, other stuff", suggested_price: 600)
meal9 = Meal.create!(chef_user: bob, name: "Smoothies", ingredients: "Fruit, other stuff", suggested_price: 500)
meal10 = Meal.create!(chef_user: jane, name: "Salmon", ingredients: "Meat, other stuff", suggested_price: 1400)

offered_meal1 = OfferedMeal.create!(price: 800, meal: meal1, event: event1, customizations: "Things")
offered_meal2 = OfferedMeal.create!(price: 800, meal: meal2, event: event1, customizations: "Things")
offered_meal3 = OfferedMeal.create!(price: 800, meal: meal3, event: event2, customizations: "Things")
offered_meal4 = OfferedMeal.create!(price: 800, meal: meal4, event: event3, customizations: "Things")
offered_meal5 = OfferedMeal.create!(price: 800, meal: meal5, event: event4, customizations: "Things")
offered_meal6 = OfferedMeal.create!(price: 800, meal: meal6, event: event4, customizations: "Things")
offered_meal7 = OfferedMeal.create!(price: 800, meal: meal7, event: event5, customizations: "Things")
offered_meal8 = OfferedMeal.create!(price: 800, meal: meal8, event: event5, customizations: "Things")
offered_meal9 = OfferedMeal.create!(price: 800, meal: meal3, event: old_event_9, customizations: "Old Things")

meal_selection1 = MealSelection.create!(user: mark, offered_meal: offered_meal8)
meal_selection2 = MealSelection.create!(user: bob, offered_meal: offered_meal7)
meal_selection3 = MealSelection.create!(user: mark, offered_meal: offered_meal6)
meal_selection4 = MealSelection.create!(user: jane, offered_meal: offered_meal5)
meal_selection5 = MealSelection.create!(user: jane, offered_meal: offered_meal3)
meal_selection6 = MealSelection.create!(user: mark, offered_meal: offered_meal4)

photo1 = Photo.create!(offered_meal: offered_meal8, image: File.open(Rails.root.join("db/seeds/meal8-image.jpg")))
photo2 = Photo.create!(offered_meal: offered_meal7, image: File.open(Rails.root.join("db/seeds/meal7-image.jpg")))
photo3 = Photo.create!(offered_meal: offered_meal6, image: File.open(Rails.root.join("db/seeds/meal6-image.jpg")))
photo4 = Photo.create!(offered_meal: offered_meal5, image: File.open(Rails.root.join("db/seeds/meal5-image.jpg")))
photo5 = Photo.create!(offered_meal: offered_meal4, image: File.open(Rails.root.join("db/seeds/meal4-image.jpg")))
photo6 = Photo.create!(offered_meal: offered_meal3, image: File.open(Rails.root.join("db/seeds/meal3-image.jpg")))
photo7 = Photo.create!(offered_meal: offered_meal2, image: File.open(Rails.root.join("db/seeds/meal2-image.jpg")))
photo8 = Photo.create!(offered_meal: offered_meal1, image: File.open(Rails.root.join("db/seeds/meal1-image.jpg")))

rating1 = Rating.create!(meal_selection: meal_selection6, stars: 4)
rating2 = Rating.create!(meal_selection: meal_selection5, stars: 5)
rating3 = Rating.create!(meal_selection: meal_selection4, stars: 4)
rating4 = Rating.create!(meal_selection: meal_selection3, stars: 5)
rating5 = Rating.create!(meal_selection: meal_selection2, stars: 5)
rating6 = Rating.create!(meal_selection: meal_selection1, stars: 4)

category1 = Category.create!(name: "Asian")
category2 = Category.create!(name: "Vegan")
category3 = Category.create!(name: "Brunch")
category4 = Category.create!(name: "Lunch")
category5 = Category.create!(name: "Spanish")
category6 = Category.create!(name: "Italian")
category7 = Category.create!(name: "Dinner")
category8 = Category.create!(name: "Greek")
