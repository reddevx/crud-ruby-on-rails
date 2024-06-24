class AddColumnFlavorToFruits < ActiveRecord::Migration[7.1]
  def change
    add_column :fruits, :flavor, :string
  end
end
