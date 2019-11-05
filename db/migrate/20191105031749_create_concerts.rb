class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :date
      t.string :opener

      t.timestamps
    end
  end
end
