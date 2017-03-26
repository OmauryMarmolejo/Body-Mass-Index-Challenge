class AddUsersToConsult < ActiveRecord::Migration[5.1]
  def change
    add_column :consults, :user_id, :integer
    add_reference :consults, foreign_key: true
  end
end
