class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :artist, null: false
      t.string :salle, null: false
      t.string :description
      t.string :style, null: false
      t.date :date, null:false

      t.timestamps
    end
  end
end
