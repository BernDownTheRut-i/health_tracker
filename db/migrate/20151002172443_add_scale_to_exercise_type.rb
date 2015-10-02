class AddScaleToExerciseType < ActiveRecord::Migration
  def change
    change_column :exercise_types, :burn_rate, :decimal, precision: 10, scale: 2
  end
end
