class RemoveCaloriesTable < ActiveRecord::Migration
  def change
    drop_table :calories
  end
end
