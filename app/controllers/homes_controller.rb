class HomesController < ApplicationController
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
    @home = Home.find(params[:id])
    @station = @home.stations
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def home_params
    params.require(:home).permit(:name, :price, :address, :year, :content, stations_attributes: [:line, :station, :walk])
  end
end
