class BitsController < ApplicationController
  before_action :set_bit, only: [:show, :edit, :update, :destroy]

  # GET /bits
  # GET /bits.json
  def index
    @bits = Bit.all
  end

  # GET /bits/1
  # GET /bits/1.json
  def show
  end

  # GET /bits/new
  def new
    @bit = Bit.new
  end

  # GET /bits/1/edit
  def edit
  end

  # POST /bits
  # POST /bits.json
  def create
    @bit = Bit.new(bit_params)

    respond_to do |format|
      if @bit.save
        format.html { redirect_to @bit, notice: 'Bit was successfully created.' }
        format.json { render :show, status: :created, location: @bit }
      else
        format.html { render :new }
        format.json { render json: @bit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bits/1
  # PATCH/PUT /bits/1.json
  def update
    respond_to do |format|
      if @bit.update(bit_params)
        format.html { redirect_to @bit, notice: 'Bit was successfully updated.' }
        format.json { render :show, status: :ok, location: @bit }
      else
        format.html { render :edit }
        format.json { render json: @bit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bits/1
  # DELETE /bits/1.json
  def destroy
    @bit.destroy
    respond_to do |format|
      format.html { redirect_to bits_url, notice: 'Bit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bit
      @bit = Bit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bit_params
      params.require(:bit).permit(:name, :invention_id)
    end
end
