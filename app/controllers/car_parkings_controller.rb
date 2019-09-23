require 'csv'
class CarParkingsController < ApplicationController
  before_action :set_car_parking, only: [:show, :update, :destroy]

  # GET /car_parkings
  def index
    @car_parkings = CarParking.all

    render json: @car_parkings
  end

  # GET /car_parkings/1
  def show
    render json: @car_parking
  end

  def nearest
    res = ActiveSupport::HashWithIndifferentAccess.new
    if params['latitude'] && params['latitude']
      get_slots = CarParking.new.available_car_parking(params)
      res[:code] = 200
      res[:data] = get_slots
    else
      res[:code] = 400
    end
    render json:res
  end

  # POST /car_parkings
  def create
    file_tobe_uplaod = CSV.read("hdb-carpark-information.csv") #params['upload_email_file']
    if file_tobe_uplaod.present?
      file_tobe_uplaod.each_with_index do |data,idx|
        car_parking = CarParking.create(:car_park_no => data[0],
        :address => data[1],
        :x_cord => data[2],
        :y_cord => data[3],
        :car_park_type => data[4],
        :type_of_parking_system => data[5],
        :short_term_parking => data[6],
        :free_parking => data[7],
        :night_parking	 => data[8],
        :free_park_decks	 => data[9],
        :gantry_height	 => data[10],
        :car_park_basement => data[11])
      end
    end
  end

  # PATCH/PUT /car_parkings/1
  def update
    if @car_parking.update(car_parking_params)
      render json: @car_parking
    else
      render json: @car_parking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /car_parkings/1
  def destroy
    @car_parking.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_parking
      @car_parking = CarParking.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_parking_params
      params.fetch(:car_parking, {})
    end
end
