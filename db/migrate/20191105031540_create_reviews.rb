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


      t.timestamps
    end
  end
end
