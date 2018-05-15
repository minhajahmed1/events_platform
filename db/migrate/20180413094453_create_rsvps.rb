class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    add_column  :rsvps, :attending, :boolean
    create_table :rsvps do |t|
      t.belongs_to :user
      t.belongs_to :post
   


      t.timestamps
    end
  end
end
