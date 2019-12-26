# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('articles')

Rubric.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('rubrics')

User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')





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

#### User #####

user = User.new(email: "leoside@numericable.fr", password: "vallabregues", is_admin: true)
user.save
puts "user n°1 done"

#### Articles #####

@rubrics = Rubric.all
@rubrics.each do |rubric|
  (0..3).each do |a|
    b= ['1','2','3','4','5','6']
    n= b.shuffle.first
    article = Article.new(title: Faker::Ancient.god, user_id: User.first.id,
    body: Faker::Lorem.paragraphs, rubric_id: rubric.id, head_img_url:"/assets/photo_rhone#{n}.jpg" ) 
    article.save
    puts "article n°#{a} done for rubric #{rubric.title}"
  end

end

