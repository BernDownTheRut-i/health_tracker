class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :date
      t.references :exercise_type

      t.timestamps null: false
    end
  end
end
