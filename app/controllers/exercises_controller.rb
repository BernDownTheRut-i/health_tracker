class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def show
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if exercise_params[:calories_expended]
      exercise_params[:calories_expended].positive? ? number = -exercise_params[:calories_expended] : exercise_params[:calories_expended]
      @calorie = Calorie.new(date: exercise_params[:date], number: number)
    end

    respond_to do |format|
      if @exercise.save && (@calorie.save || true)
        format.html { redirect_to exercises_path, notice: 'Exercise was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def index
    @exercises = Exercise.all
  end

  def edit

  end

  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise, notice: 'Exercise was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url, notice: 'Exercise was successfully destroyed.' }
    end
  end

  def new
    @exercise = Exercise.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:date, :duration, :exercise_type_id, :calories)
    end
end
