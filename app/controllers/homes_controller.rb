class HomesController < ApplicationController
  before_action :set_params, only: %i[show update destroy edit]
  
  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
    @home.stations.build
  end

  def create
    if Home.create(home_params)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @station = @home.stations
  end

  def edit
    @station = @home.stations
  end

  def update
    if @home.update(update_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    if @home.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  
  def home_params
    params.require(:home).permit(:name, :price, :address, :year, :content, stations_attributes: [:line, :station, :walk])
  end

  def set_params
    @home = Home.find(params[:id])
  end

  def update_params
    params.require(:home).permit(:name, :price, :address, :year, :content, stations_attributes: 
                                [:line, :station, :walk, :_destroy, :id])
  end
end
