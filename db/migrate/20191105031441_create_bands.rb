class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.boolean :touring
      t.date :tour_start
      t.date :tour_end

      t.timestamps
    end
  end
end
