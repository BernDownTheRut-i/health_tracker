class CaloricsController < ApplicationController
  before_action :set_caloric, only: [:show, :edit, :update, :destroy]

  # GET /calorics
  def index
    @calorics = Caloric.all
  end

  # GET /calorics/1
  def show
  end

  # GET /calorics/new
  def new
    @caloric = Caloric.new
  end

  # GET /calorics/1/edit
  def edit
  end

  # POST /calorics
  def create
    @caloric = Caloric.new(caloric_params)

    if @caloric.save
      redirect_to @caloric, notice: 'Caloric was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /calorics/1
  def update
    if @caloric.update(caloric_params)
      redirect_to @caloric, notice: 'Caloric was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /calorics/1
  def destroy
    @caloric.destroy
    redirect_to calorics_url, notice: 'Caloric was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caloric
      @caloric = Caloric.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def caloric_params
      params.require(:caloric).permit(:date, :numer)
    end
end
