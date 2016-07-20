require 'faker'

100.times do
  Actor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password"), url: Faker::Internet.url)
end


500.times do
  Post.create(title: Faker::Commerce.product_name, resource_type: Faker::Commerce.color, description: Faker::Lorem.paragraph, link: Faker::Internet.url, actor_id: rand(100))
end

actors = Array (1..100)
i=1

100.times do
  relationship1_array = actors
  relationship1_array.delete(i)
  relationship2_array = actors
  relationship2_array.delete(i)

  rand1_1 = rand(1..10)
  rand1_1.times do
    rand1 = relationship1_array.sample
    relationship1_array.delete(rand1)
    Relationship.create(follower_id: i, followed_id: rand1)
  end

  rand1_2 = rand(1..10)
  rand1_2.times do
    rand2 = relationship2_array.sample
    relationship2_array.delete(rand2)
    Relationship.create(follower_id: rand2, followed_id: i)
  end
  i += 1
end

