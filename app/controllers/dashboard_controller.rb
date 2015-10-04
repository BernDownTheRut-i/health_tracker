class DashboardController < ApplicationController

  def index
    @today = Dashboard.new(Date.today)

    @yesterday = Dashboard.new(Date.today - 1.day)

    @caloric = Caloric.new
    @exercise = Exercise.new
    @step = Step.new
    @weight = Weight.new
  end

end
