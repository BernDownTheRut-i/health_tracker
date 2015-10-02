class Dashboard < ActiveRecord::Base

  def net_calories_today(calorics, steps, exercises)
    calorics.onsumed_today - steps.steps_calories_today - exercises.calories_burned_today
  end

end
