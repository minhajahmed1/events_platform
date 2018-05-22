class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.belongs_to :user
      t.belongs_to :post
   


      t.timestamps
    end
  end
end
