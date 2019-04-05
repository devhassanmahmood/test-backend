class Api::V1::MirrorsController < ApplicationController

  def index
    @mirrors = Mirror.all
    render json: @mirrors
  end

  def create
    @mirror = Mirror.create(mirror_params)
    render json: @mirror
  end

  def show
    @mirror = Mirror.find(params[:id])
    render json: @mirror
  end

  def destroy
    Mirror.destroy(params[:id])
  end

  def update
    @mirror = Mirror.find(params[:id])
    @mirror.update(mirror_params)
    render json: @mirror
  end

  private

  def mirror_params
    params.require(:mirror).permit(:name, :password)
  end
end
