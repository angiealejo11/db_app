class SubscrptionsController < ApplicationController
  before_action :set_subscrption, only: [:show, :update, :destroy]

  # GET /subscrptions
  def index
    @subscrptions = Subscrption.all

    render json: @subscrptions
  end

  # GET /subscrptions/1
  def show
    render json: @subscrption
  end

  # POST /subscrptions
  def create
    @subscrption = Subscrption.new(subscrption_params)

    if @subscrption.save
      render json: @subscrption, status: :created, location: @subscrption
    else
      render json: @subscrption.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subscrptions/1
  def update
    if @subscrption.update(subscrption_params)
      render json: @subscrption
    else
      render json: @subscrption.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subscrptions/1
  def destroy
    @subscrption.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscrption
      @subscrption = Subscrption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subscrption_params
      params.fetch(:subscrption, {})
    end
end
