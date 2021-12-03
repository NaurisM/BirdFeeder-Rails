class ObservationsController < ApplicationController
  before_action :set_observation, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index]

  # GET /observations or /observations.json
  def index
    @observations = Observation.all
  end

  # GET /observations/1 or /observations/1.json
  def show
  end

  # GET /observations/new
  def new
    @observation = current_user.observations.build
  end

  # GET /observations/1/edit
  def edit
  end

  def gallery
  end

  # POST /observations or /observations.json
  def create
    @observation = current_user.observations.build(observation_params)

    respond_to do |format|
      if @observation.save
        format.html { redirect_to @observation, notice: "Observation was successfully created." }
        format.json { render :show, status: :created, location: @observation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observations/1 or /observations/1.json
  def update
    respond_to do |format|
      if @observation.update(observation_params)
        format.html { redirect_to @observation, notice: "Observation was successfully updated." }
        format.json { render :show, status: :ok, location: @observation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observations/1 or /observations/1.json
  def destroy
    @observation.destroy
    respond_to do |format|
      format.html { redirect_to observations_url, notice: "Observation was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation
      @observation = Observation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def observation_params
      params.require(:observation).permit(:season, :name, :max_number, :notes, :user_id)
    end
end
