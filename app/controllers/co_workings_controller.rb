class CoWorkingsController < ApplicationController
  before_action :set_co_working, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @co_workings = CoWorking.all
    respond_with(@co_workings)
  end

  def show
    respond_with(@co_working)
  end

  def new
    @co_working = CoWorking.new
    respond_with(@co_working)
  end

  def edit
  end

  def create
    @co_working = CoWorking.new(co_working_params)
    @co_working.save
    respond_with(@co_working)
  end

  def update
    @co_working.update(co_working_params)
    respond_with(@co_working)
  end

  def destroy
    @co_working.destroy
    respond_with(@co_working)
  end

  private
    def set_co_working
      @co_working = CoWorking.find(params[:id])
    end

    def co_working_params
      params.require(:co_working).permit(:name, :address, :url, :description, :picture)
    end
end
