class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.datetime :date
      t.string   :name
      t.integer :user_id
      t.text :description
      

      t.timestamps
    end
  end
end
