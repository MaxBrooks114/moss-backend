class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :score
      t.float :venue
      t.float :sound
      t.float :performance
      t.float :set
      t.float :price
      t.text :write_up
      t.integer :user_id
      t.integer :concert_id
      t.integer :venue_id
      t.integer :band_id 


      t.timestamps
    end
  end
end
