class ApartsController < ApplicationController
  before_action :set_apart, only: [:show, :edit, :update, :destroy]

  def index
    @apart = Apart.all
  end

  def new
    @apart = Apart.new
    2.times{
      @apart.stations.build
        sum += 1
    }
  end

  def create
    @apart = Apart.create(apart_params)
    if @apart.save
      redirect_to "new_apart_path"
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
    params.require(:apart).permit(:name, :rent, :address, :age, :note)
  end

  def set_apart
    @apart = Apart.find(params[:id])
  end

end
