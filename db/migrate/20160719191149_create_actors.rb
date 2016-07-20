class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :url
      # add_attachment :posts, :image //
      # can I put a headshot in here?

      t.timestamps(null: false)
    end
  end
end
