class V1::SchoolsController < ApplicationController
  respond_to :json, :xml

  def index
    respond_with School.all
  end

  def show
    respond_with School.find(params[:id])
  end

  def create
    respond_with School.create(params[:school])
  end

  def update
    respond_with School.update(params[:id], params[:school])
  end

  def destroy
    respond_with School.destroy(params[:id])
  end
end
