class EatingsController < ApplicationController
  before_action :set_eating, only: [:show, :edit, :update, :destroy]

  # GET /eatings
  # GET /eatings.json
  def index
    @eatings = Eating.all
  end

  # GET /eatings/1
  # GET /eatings/1.json
  def show
  end

  # GET /eatings/new
  def new
    @eating = Eating.new
  end

  # GET /eatings/1/edit
  def edit
  end

  # POST /eatings
  # POST /eatings.json
  def create
    @eating = Eating.new(eating_params)

    respond_to do |format|
      if @eating.save
        format.html { redirect_to @eating, notice: 'Eating was successfully created.' }
        format.json { render :show, status: :created, location: @eating }
      else
        format.html { render :new }
        format.json { render json: @eating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eatings/1
  # PATCH/PUT /eatings/1.json
  def update
    respond_to do |format|
      if @eating.update(eating_params)
        format.html { redirect_to @eating, notice: 'Eating was successfully updated.' }
        format.json { render :show, status: :ok, location: @eating }
      else
        format.html { render :edit }
        format.json { render json: @eating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eatings/1
  # DELETE /eatings/1.json
  def destroy
    @eating.destroy
    respond_to do |format|
      format.html { redirect_to eatings_url, notice: 'Eating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eating
      @eating = Eating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eating_params
      params.require(:eating).permit(:name, :description, :picture)
    end
end
