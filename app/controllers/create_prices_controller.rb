class CreatePricesController < ApplicationController
  before_action :set_create_price, only: [:show, :edit, :update, :destroy]

  # GET /create_prices
  # GET /create_prices.json
  def index
    @create_prices = CreatePrice.all
  end

  # GET /create_prices/1
  # GET /create_prices/1.json
  def show
  end

  # GET /create_prices/new
  def new
    @create_price = CreatePrice.new
  end

  # GET /create_prices/1/edit
  def edit
  end

  # POST /create_prices
  # POST /create_prices.json
  def create
    @create_price = CreatePrice.new(create_price_params)

    respond_to do |format|
      if @create_price.save
        format.html { redirect_to @create_price, notice: 'Create price was successfully created.' }
        format.json { render :show, status: :created, location: @create_price }
      else
        format.html { render :new }
        format.json { render json: @create_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_prices/1
  # PATCH/PUT /create_prices/1.json
  def update
    respond_to do |format|
      if @create_price.update(create_price_params)
        format.html { redirect_to @create_price, notice: 'Create price was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_price }
      else
        format.html { render :edit }
        format.json { render json: @create_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_prices/1
  # DELETE /create_prices/1.json
  def destroy
    @create_price.destroy
    respond_to do |format|
      format.html { redirect_to create_prices_url, notice: 'Create price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_price
      @create_price = CreatePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_price_params
      params.require(:create_price).permit(:price1, :price2)
    end
end
