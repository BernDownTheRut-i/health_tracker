class Exercise < ActiveRecord::Base
  has_many :exercise_types

  def calories_burned
    ExerciseType.find(exercise_type_id).burn_rate * duration
  end

  def self.calories_burned_today
    Exercise.where(date: Date.today).reduce(0) do |sum, e|
      sum += e.calories_burned
    end
  end

end

#<td><%= e.calories_burned %></td>
