class V1::CountiesController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with County.all
  end

  def show
    respond_with County.find(params[:id])
  end

  def create
    respond_with County.create(params[:county])
  end

  def update
    respond_with County.update(params[:id], params[:county])
  end

  def destroy
    respond_with County.destroy(params[:id])
  end
end
