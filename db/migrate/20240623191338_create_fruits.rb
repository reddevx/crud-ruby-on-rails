class CreateFruits < ActiveRecord::Migration[7.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
