class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :artist
      t.string :venue
      t.date :date
      t.boolean :opener

      t.timestamps
    end
  end
end
