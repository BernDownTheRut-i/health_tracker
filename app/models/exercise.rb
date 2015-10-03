class Exercise < ActiveRecord::Base
  has_many :exercise_types

  def calories_burned
    ExerciseType.find(exercise_type_id).burn_rate * duration
  end

  def self.calories_burned (date)
    cb = Exercise.where(date: date).reduce(0) do |sum, e|
      sum += e.calories_burned
    end
    cb.abs
  end

end
