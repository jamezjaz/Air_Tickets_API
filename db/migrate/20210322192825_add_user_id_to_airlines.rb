class AddUserIdToAirlines < ActiveRecord::Migration[6.1]
  def change
    add_column :airlines, :user_id, :integer
  end
end
