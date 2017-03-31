class AddCategoryToConsults < ActiveRecord::Migration[5.1]
  def change
    add_column :consults, :category, :string
  end
end
