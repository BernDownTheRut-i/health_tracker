class AddColumnToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :duration, :integer
  end
end
