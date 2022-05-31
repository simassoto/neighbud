class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @services = Service.all
    @search = params["search"]
    if @search.present?
      @title = @search["title"]
      @services = Service.where(title: @title)
    end

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: service }),
        image_url: helpers.asset_url("")
      }
    end
  end

  def show
    @markers = [
      {
        lat: @service.latitude,
        lng: @service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: @service }),
        image_url: helpers.asset_url("")
      }
    ]

  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @user = current_user
    @service.user = @user
    if @service.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to user_path(current_user)
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :category, :address, :price, :user_id)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
