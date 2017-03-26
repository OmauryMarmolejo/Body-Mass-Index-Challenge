class CreateConsults < ActiveRecord::Migration[5.1]
  def change
    create_table :consults do |t|
      t.float :height
      t.float :mass
      t.float :body_mass, :scale => 2
      t.timestamps
    end
  end
end
