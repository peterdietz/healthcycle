class CaregiversController < ApplicationController
  before_action :set_caregiver, only: [:show, :edit, :update, :destroy]

  # GET /caregivers
  # GET /caregivers.json
  def index
    @caregivers = Caregiver.all
  end

  # GET /caregivers/1
  # GET /caregivers/1.json
  def show
  end

  # GET /caregivers/new
  def new
    @caregiver = Caregiver.new
  end

  # GET /caregivers/1/edit
  def edit
  end

  # POST /caregivers
  # POST /caregivers.json
  def create
    @caregiver = Caregiver.new(caregiver_params)

    respond_to do |format|
      if @caregiver.save
        format.html { redirect_to @caregiver, notice: 'Caregiver was successfully created.' }
        format.json { render :show, status: :created, location: @caregiver }
      else
        format.html { render :new }
        format.json { render json: @caregiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caregivers/1
  # PATCH/PUT /caregivers/1.json
  def update
    respond_to do |format|
      if @caregiver.update(caregiver_params)
        format.html { redirect_to @caregiver, notice: 'Caregiver was successfully updated.' }
        format.json { render :show, status: :ok, location: @caregiver }
      else
        format.html { render :edit }
        format.json { render json: @caregiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caregivers/1
  # DELETE /caregivers/1.json
  def destroy
    @caregiver.destroy
    respond_to do |format|
      format.html { redirect_to caregivers_url, notice: 'Caregiver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caregiver
      @caregiver = Caregiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caregiver_params
      params.require(:caregiver).permit(:firstname, :lastname, :address1, :address2, :city, :state, :country, :zip, :email, :phone, :drivers_license_number, :drivers_license_state, :is_stna, :stna_license_id, :is_lpn, :lpn_license_id, :is_verified)
    end
end
