class Dashboard

  def initialize(date)
    @date = date
  end

  def self.net_calories_today
    Caloric.consumed_today - Step.steps_calories_today - Exercise.calories_burned_today
  end

  def self.net_calories (date)
    Caloric.consumed(date) - Step.calories_burned(date) - Exercise.calories_burned(date)
  end

end
