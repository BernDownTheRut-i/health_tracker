class Dashboard

  def initialize(date)
    @date = date
  end

  def net_calories
    Caloric.consumed_today - Step.steps_calories_on_day(@date) - Exercise.calories_burned_today
  end

  def steps
    Step.steps_on_day(@date)
  end

end
