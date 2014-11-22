class V1::CountiesController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with County.all
  end

  def show
    respond_with County.find(params[:id])
  end

  def create
    respond_with :v1, County.create(county_params)
  end

  def update
    respond_with :v1, County.update(params[:id], county_params)
  end

  def destroy
    respond_with County.destroy(params[:id])
  end

  private

  def county_params
    params.require(:county).permit(:name)
  end
end
