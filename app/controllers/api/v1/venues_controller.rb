class Api::V1::VenuesController < ApplicationController
  before_action :set_Venue, only: [:show, :update, :destroy]

  # GET /Venues
  def index
    @Venues = Venue.all

    render json: @Venues
  end

  # GET /Venues/1
  def show
    render json: @Venue
  end

  # POST /Venues
  def create
    @Venue = Venue.new(Venue_params)

    if @Venue.save
      render json: @Venue, status: :created, location: @Venue
    else
      render json: @Venue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /Venues/1
  def update
    if @Venue.update(Venue_params)
      render json: @Venue
    else
      render json: @Venue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /Venues/1
  def destroy
    @Venue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Venue
      @Venue = Venue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def Venue_params
      params.require(:Venue).permit(:name, :Venuename, :password_digest, :age, :home)
    end
end
