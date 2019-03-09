class ApartsController < ApplicationController
  before_action :set_apart, only: [:show, :edit, :update, :destroy]

  def index
    @aparts = Apart.all
  end

  def new
    @apart = Apart.new
    2.times{
      @apart.stations.build
    }
  end

  def create
    @apart = Apart.new(apart_params)
    if @apart.save
      redirect_to aparts_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @apart.update(apart_params)
      redirect_to aparts_path
    else
      render "edit"
    end
  end

  def destroy
    @apart.destroy
    redirect_to aparts_path
  end

  private

  def apart_params
    # what
    # how
    # why
    params.require(:apart).permit(:name, :rent, :address, :age, :note, stations_attributes: [:line, :name, :foot])
  end

  def set_apart
    @apart = Apart.find_by(id:params[:id]) || Apart.new
  end

end
