# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'admin')

Category.create!(name: 'Entertainment')
Category.create!(name: 'Sports')
Category.create!(name: 'Magazine')
Category.create!(name: 'TV')
Category.create!(name: 'Others')

Article.create!(title: 'Base Article', text: 'Here is a nice article for your reading pleasure', )
