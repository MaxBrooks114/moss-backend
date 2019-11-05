class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.date :date
      t.boolean :opener
      t.integer :venue_id
      t.integer :band_id
      t.integer :location_id

      t.timestamps
    end
  end
end
