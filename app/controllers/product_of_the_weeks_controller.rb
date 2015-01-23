class ProductOfTheWeeksController < ApplicationController
  before_action :set_product_of_the_week, only: [:show, :edit, :update, :destroy]

  # GET /product_of_the_weeks
  # GET /product_of_the_weeks.json
  def index
    @product_of_the_weeks = ProductOfTheWeek.all
  end

  # GET /product_of_the_weeks/1
  # GET /product_of_the_weeks/1.json
  def show
  end

  # GET /product_of_the_weeks/new
  def new
    @product_of_the_week = ProductOfTheWeek.new
  end

  # GET /product_of_the_weeks/1/edit
  def edit
  end

  # POST /product_of_the_weeks
  # POST /product_of_the_weeks.json
  def create
    @product_of_the_week = ProductOfTheWeek.new(product_of_the_week_params)

    respond_to do |format|
      if @product_of_the_week.save
        format.html { redirect_to @product_of_the_week, notice: 'Product of the week was successfully created.' }
        format.json { render :show, status: :created, location: @product_of_the_week }
      else
        format.html { render :new }
        format.json { render json: @product_of_the_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_of_the_weeks/1
  # PATCH/PUT /product_of_the_weeks/1.json
  def update
    respond_to do |format|
      if @product_of_the_week.update(product_of_the_week_params)
        format.html { redirect_to @product_of_the_week, notice: 'Product of the week was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_of_the_week }
      else
        format.html { render :edit }
        format.json { render json: @product_of_the_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_of_the_weeks/1
  # DELETE /product_of_the_weeks/1.json
  def destroy
    @product_of_the_week.destroy
    respond_to do |format|
      format.html { redirect_to product_of_the_weeks_url, notice: 'Product of the week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_of_the_week
      @product_of_the_week = ProductOfTheWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_of_the_week_params
      params.require(:product_of_the_week).permit(:name, :description, :date, :link, :published, :picture)
    end
end
