class AddBurnRateToExerciseTypes < ActiveRecord::Migration
  def change
    add_column :exercise_types, :burn_rate, :decimal
  end
end
