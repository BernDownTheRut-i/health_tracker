class StepsController < ApplicationController
  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      redirect_to @step, notice: 'Step was successfully created.'
    else
      render :new
    end
  end

  def update
    if @step.update(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @step.destroy
    redirect_to steps_url, notice: 'Step was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:date, :number)
    end

end