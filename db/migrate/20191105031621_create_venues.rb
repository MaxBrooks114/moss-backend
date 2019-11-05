class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :location
      t.string :description
      t.string :size

      t.timestamps
    end
  end
end
