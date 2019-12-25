# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Rubric.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('rubrics')

require 'faker'


s=19
n=0

#### Rubric #####

(0..5).each do |i|
  s=s-1
  n=n+1
  rubric = Rubric.new(title: "#{s}ème siècle",
  img_url: "/assets/photo_rhone#{n}.jpg"
  )
  rubric.save
  puts "rubric n°#{i} done"
end