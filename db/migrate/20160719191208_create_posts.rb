class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :resource_type
      t.string :description
      t.string :link
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
