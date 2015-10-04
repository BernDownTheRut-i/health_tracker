class DashboardController < ApplicationController

  def index
    @today = Dashboard.new(Date.today)
    @yesterday = Dashboard.new(Date.today - 1.day)

    @steps_today = Step.steps_on_day(Date.today)
    @calories_today = Caloric.consumed(Date.today)
    @burned_today = Exercise.calories_burned(Date.today)
    @steps_burned = Step.calories_burned(Date.today)

    @caloric = Caloric.new
    @exercise = Exercise.new
    @step = Step.new
    @weight = Weight.new
  end

end
