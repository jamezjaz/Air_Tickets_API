class CreateAirlines < ActiveRecord::Migration[6.1]
  def change
    create_table :airlines do |t|
      t.string :name
      t.decimal :price
      t.string :location
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
