class WorkersRolesController < ApplicationController
  before_action :set_workers_role, only: [:show, :edit, :update, :destroy]

  # GET /workers_roles
  # GET /workers_roles.json
  def index
    @workers_roles = WorkersRole.all
  end

  # GET /workers_roles/1
  # GET /workers_roles/1.json
  def show
  end

  # GET /workers_roles/new
  def new
    @workers_role = WorkersRole.new
  end

  # GET /workers_roles/1/edit
  def edit
  end

  # POST /workers_roles
  # POST /workers_roles.json
  def create
    @workers_role = WorkersRole.new(workers_role_params)

    respond_to do |format|
      if @workers_role.save
        format.html { redirect_to @workers_role, notice: 'Workers role was successfully created.' }
        format.json { render :show, status: :created, location: @workers_role }
      else
        format.html { render :new }
        format.json { render json: @workers_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workers_roles/1
  # PATCH/PUT /workers_roles/1.json
  def update
    respond_to do |format|
      if @workers_role.update(workers_role_params)
        format.html { redirect_to @workers_role, notice: 'Workers role was successfully updated.' }
        format.json { render :show, status: :ok, location: @workers_role }
      else
        format.html { render :edit }
        format.json { render json: @workers_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workers_roles/1
  # DELETE /workers_roles/1.json
  def destroy
    @workers_role.destroy
    respond_to do |format|
      format.html { redirect_to workers_roles_url, notice: 'Workers role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workers_role
      @workers_role = WorkersRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workers_role_params
      params.require(:workers_role).permit(:worker_id, :role_id)
    end
end
