class EquipmentsController < ApplicationController
  before_action :set_equipment, only: %i[show edit update destroy]

  # GET /equipments or /equipments.json
  def index
    @equipments = Equipment.all
  end

  # GET /equipments/1 or /equipments/1.json
  def show; end

  # GET /equipments/new
  def new
    @equipment = Equipment.new
  end

  # GET /equipments/1/edit
  def edit; end

  # POST /equipments or /equipments.json
  def create
    @equipment = Equipment.new(equipment_params)

    respond_to do |format|
      if @equipment.save
        format.html { redirect_to equipment_path(@equipment), notice: 'Equipamento criado com sucesso!' }
        format.json { render :show, status: :created, location: @equipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipments/1 or /equipments/1.json
  def update
    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html { redirect_to equipment_path(@equipment), notice: 'Equipamento atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @equipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipments/1 or /equipments/1.json
  def destroy
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to equipments_path, notice: 'Equipamento excluído com sucesso!' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def equipment_params
    params.require(:equipment).permit(:name, :serial_number, :date_of_acquisition, :cost, :state, :last_maintenance,
                                      :current_responsible, :delivery_date_responsible)
  end
end
