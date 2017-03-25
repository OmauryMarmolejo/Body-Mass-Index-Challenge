class CreateConsults < ActiveRecord::Migration[5.1]
  def change
    create_table :consults do |t|
      t.integer :height
      t.integer :mass
      t.integer :body_mass

      t.timestamps
    end
  end
end
