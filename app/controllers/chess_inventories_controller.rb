class ChessInventoriesController < ApplicationController
  before_action :set_chess_inventory, only: [:show, :edit, :update, :destroy]
  

  # GET /chess_inventories
  # GET /chess_inventories.json
  def index
    @chess_inventories = ChessInventory.all
  end

  # GET /chess_inventories/1
  # GET /chess_inventories/1.json
  def show
  end

  # GET /chess_inventories/new
  def new
    @chess_inventory = ChessInventory.new(:shipment_type => 1)
  end

  # GET /chess_inventories/1/edit
  def edit
  end

  # POST /chess_inventories
  # POST /chess_inventories.json
  def create
    @chess_inventory = ChessInventory.new(chess_inventory_params)
    params[:shipment_type] = params[:shipment_type].to_i
    if @chess_inventory.save
      redirect_to new_chess_inventory_path
    else
      render :new 
    end
  end

  # PATCH/PUT /chess_inventories/1
  # PATCH/PUT /chess_inventories/1.json
  def update
    respond_to do |format|
      if @chess_inventory.update(chess_inventory_params)
        format.html { redirect_to @chess_inventory, notice: 'Chess inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @chess_inventory }
      else
        format.html { render :edit }
        format.json { render json: @chess_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chess_inventories/1
  # DELETE /chess_inventories/1.json
  def destroy
    @chess_inventory.destroy
    respond_to do |format|
      format.html { redirect_to chess_inventories_url, notice: 'Chess inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chess_inventory
      @chess_inventory = ChessInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chess_inventory_params
      params.require(:chess_inventory).permit(:entrytype, :partnumber, :quantity,:location, :shipment_type)
    end
end
