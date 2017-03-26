class CreateConsults < ActiveRecord::Migration[5.1]
  def change
    create_table :consults do |t|
<<<<<<< HEAD
      t.integer :height
      t.integer :mass
      t.integer :body_mass

=======
      t.float :height
      t.float :mass
      t.float :body_mass, :scale => 2
>>>>>>> feature/consults
      t.timestamps
    end
  end
end
