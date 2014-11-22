class V1::SchoolsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with School.all
  end

  def show
    respond_with School.find(params[:id])
  end

  def create
    respond_with :v1, School.create(school_params)
  end

  def update
    respond_with :v1, School.update(params[:id], school_params)
  end

  def destroy
    respond_with School.destroy(params[:id])
  end

  private

  def school_params
    params.require(:school).permit(:uid, :overweight_percentage, :obese_percentage)
  end
end
