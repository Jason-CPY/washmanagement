class CitiesWorkersController < ApplicationController
  before_action :set_cities_worker, only: [:show, :edit, :update, :destroy]

  # GET /cities_workers
  # GET /cities_workers.json
  def index
    @cities_workers = CitiesWorker.all
  end

  # GET /cities_workers/1
  # GET /cities_workers/1.json
  def show
  end

  # GET /cities_workers/new
  def new
    @cities_worker = CitiesWorker.new
  end

  # GET /cities_workers/1/edit
  def edit
  end

  # POST /cities_workers
  # POST /cities_workers.json
  def create
    @cities_worker = CitiesWorker.new(cities_worker_params)

    respond_to do |format|
      if @cities_worker.save
        format.html { redirect_to @cities_worker, notice: 'Cities worker was successfully created.' }
        format.json { render :show, status: :created, location: @cities_worker }
      else
        format.html { render :new }
        format.json { render json: @cities_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities_workers/1
  # PATCH/PUT /cities_workers/1.json
  def update
    respond_to do |format|
      if @cities_worker.update(cities_worker_params)
        format.html { redirect_to @cities_worker, notice: 'Cities worker was successfully updated.' }
        format.json { render :show, status: :ok, location: @cities_worker }
      else
        format.html { render :edit }
        format.json { render json: @cities_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities_workers/1
  # DELETE /cities_workers/1.json
  def destroy
    @cities_worker.destroy
    respond_to do |format|
      format.html { redirect_to cities_workers_url, notice: 'Cities worker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cities_worker
      @cities_worker = CitiesWorker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cities_worker_params
      params.require(:cities_worker).permit(:city_id)
    end
end
