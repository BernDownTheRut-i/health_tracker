class CaloriesController < ApplicationController
  before_action :set_calory, only: [:show, :edit, :update, :destroy]

  # GET /calories
  def index
    @calories = Calorie.all
  end

  # GET /calories/1
  def show
  end

  # GET /calories/new
  def new
    @calory = Calorie.new
  end

  # GET /calories/1/edit
  def edit
  end

  # POST /calories
  def create
    @calory = Calorie.new(calory_params)

    respond_to do |format|
      if @calory.save
        format.html { redirect_to @calory, notice: 'Calorie was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /calories/1
  def update
    respond_to do |format|
      if @calory.update(calory_params)
        format.html { redirect_to @calory, notice: 'Calorie was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /calories/1
  def destroy
    @calory.destroy
    respond_to do |format|
      format.html { redirect_to calories_url, notice: 'Calorie was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calory
      @calory = Calorie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calory_params
      params.require(:calorie).permit(:date, :number)
    end
end
