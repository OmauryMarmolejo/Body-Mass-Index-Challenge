class AddUserToConsult < ActiveRecord::Migration[5.1]
  def change
    add_column :consults, :user_id, :integer
  end
end
