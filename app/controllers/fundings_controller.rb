class FundingsController < ApplicationController
  before_action :set_funding, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index]

  respond_to :html

  def index
    @fundings = Funding.all
    respond_with(@fundings)
  end

  def show
    respond_with(@funding)
  end

  def new
    @funding = Funding.new
    respond_with(@funding)
  end

  def edit
  end

  def create
    @funding = Funding.new(funding_params)
    @funding.save
    respond_with(@funding)
  end

  def update
    @funding.update(funding_params)
    respond_with(@funding)
  end

  def destroy
    @funding.destroy
    respond_with(@funding)
  end

  private
    def set_funding
      @funding = Funding.find(params[:id])
    end

    def funding_params
      params.require(:funding).permit(:name, :adress, :focus, :url, :art, :description, :thumbnail)
    end
end
