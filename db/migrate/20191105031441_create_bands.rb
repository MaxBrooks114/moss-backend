class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.string :touring
      t.string :tour_start
      t.string :tour_end

      t.timestamps
    end
  end
end
