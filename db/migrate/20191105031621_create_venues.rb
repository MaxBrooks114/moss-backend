class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :location_id
      t.string :description
      t.string :capacity

      t.timestamps
    end
  end
end
