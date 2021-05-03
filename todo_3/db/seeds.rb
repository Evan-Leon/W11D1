# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Todo.destroy_all

  todo_1 = Todo.create!(title: "Clean kitchen" ,body: "Quickly!" ,done: false )
  todo_2 = Todo.create!(title: "Setup rails project" ,body: "without notes" ,done: true )
  todo_3 = Todo.create!(title: "Complete schema" ,body: "do it" ,done: true )

end