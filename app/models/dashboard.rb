class Dashboard

  def initialize(date)
    @date = date
  end

  def net_calories
    Caloric.consumed(@date) - Step.calories_burned(@date) - Exercise.calories_burned(@date)
  end

end
