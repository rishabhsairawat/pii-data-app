class RentalUnitsController < ApplicationController
  before_action :set_rental_unit, only: [:show, :update, :destroy]

  # GET /rental_units
  def index
    @rental_units = RentalUnit.all

    render json: @rental_units
  end

  # GET /rental_units/1
  def show
    if @rental_unit
      render json: @rental_unit 
    else
      render json: {}, status: :not_found
    end
  end

  # POST /rental_units
  def create
    @rental_unit = RentalUnit.new(rental_unit_params)

    if @rental_unit.save
      render json: @rental_unit, status: :created, location: @rental_unit
    else
      render json: @rental_unit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rental_units/1
  def update
    if @rental_unit && @rental_unit.update(rental_unit_params)
      render json: @rental_unit
    elsif @rental_unit
      render json: @rental_unit.errors, status: :unprocessable_entity
    else
      render json: {}, status: :not_found
    end
  end

  # DELETE /rental_units/1
  def destroy
    if @rental_unit
      @rental_unit.destroy
    else
      render json: {}, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_unit
      @rental_unit = RentalUnit.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rental_unit_params
      params.require(:rental_unit).permit(:address, :rooms, :bathrooms, :price_cents, :user_id)
    end
end
