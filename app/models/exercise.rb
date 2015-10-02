class Exercise < ActiveRecord::Base
  has_many :exercise_types

  def calories_burned
    exercise_type.burn_rate * duration
  end

end

#<td><%= e.calories_burned %></td>
