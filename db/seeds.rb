# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do 
    User.create(username:Faker::Name.unique.name, email: Faker::Internet.unique.email, password: 'password')
end


demoUser = User.create(username: "IvanGoGreen", email: "wang.han.ivan@hotmail.com", password: 'thisisareallygoodpassword');
 
category1 = Category.create(title: 'Solar', description: 'Solar energy.');
category2 = Category.create(title: 'Wind', description: 'Wind energy.');
category10 = Category.create(title: 'SDG goals', description: 'SDG goals.');
category3 = Category.create(title: 'Electric cars', description: 'Electric cars');
category4 = Category.create(title: 'Global warming', description: 'Global warming');
category6 = Category.create(title: 'Aashe', description: 'Aashe');
category7 = Category.create(title: 'LEED', description: 'LEED certificate');
category8 = Category.create(title: 'Transportation', description: 'Transportation');
category5 = Category.create(title: 'Air Polution', description: 'Air Polution');
category9 = Category.create(title: 'Water polution', description: 'Water polution');

100.times do
    Journal.create(title: Faker::Book.unique.title, body: Faker::Hipster.paragraphs, author_id: rand(1...30), category_id: rand(1..10), image_url: "https://picsum.photos/200")
end
