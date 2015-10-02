class DashboardController < ApplicationController
  def index
    @calorics = Caloric.all
    @exercises = Exercise.all
    @exercise_types = ExerciseType.all
    @steps = Step.all
    @weights = Weight.all
  end

end
