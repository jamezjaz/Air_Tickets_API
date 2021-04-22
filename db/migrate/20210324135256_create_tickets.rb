class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :airline_name
      t.string :username
      t.string :city
      t.datetime :date
      t.integer :user_id
      t.integer :airline_id

      t.timestamps
    end
  end
end
