class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  #skip_before_action :authenticate_user!, only: :index
  #authorize @service

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description  ILIKE :query OR category ILIKE :query "
      @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
    end

    categories = params.dig(:filter, :categories)&.reject(&:empty?) || []
    @services = @services.where(category: categories) if categories.any?

    @services = @services.where(price: ..params[:price]) if params[:price]

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: service }),
        image_url: helpers.asset_url("#{service.category}.png")
      }
    end
  end

   def show
    @service = Service.find(params[:id])
    # @markers = [
    #   {
    #     lat: @service.latitude,
    #     lng: @service.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { service: @service }),
    #     image_url: helpers.asset_url("")
    #   }
    # ]

    end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @user = current_user
    @service.user = @user
    if @service.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to dashboard_path
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :category, :address, :price, :user_id)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
