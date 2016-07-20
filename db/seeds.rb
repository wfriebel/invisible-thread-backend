require 'faker'

100.times do
  Actor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, )
end
t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :url
