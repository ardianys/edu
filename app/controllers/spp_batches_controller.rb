class SppBatchesController < ApplicationController
  before_action :set_spp_batch, only: %i[ show edit update destroy ]

  # GET /spp_batches or /spp_batches.json
  def index
    @spp_batches = SppBatch.all
  end

  # GET /spp_batches/1 or /spp_batches/1.json
  def show
  end

  # GET /spp_batches/new
  def new
    @spp_batch = SppBatch.new
  end

  # GET /spp_batches/1/edit
  def edit
  end

  # POST /spp_batches or /spp_batches.json
  def create
    @spp_batch = SppBatch.new(spp_batch_params)

    respond_to do |format|
      if @spp_batch.save
        format.html { redirect_to spp_batch_url(@spp_batch), notice: "SPP batch was successfully created." }
        format.json { render :show, status: :created, location: @spp_batch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spp_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spp_batches/1 or /spp_batches/1.json
  def update
    respond_to do |format|
      if @spp_batch.update(spp_batch_params)
        format.html { redirect_to spp_batch_url(@spp_batch), notice: "SPP batch was successfully updated." }
        format.json { render :show, status: :ok, location: @spp_batch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spp_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spp_batches/1 or /spp_batches/1.json
  def destroy
    @spp_batch.destroy!

    respond_to do |format|
      format.html { redirect_to spp_batches_url, notice: "SPP batch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spp_batch
      @spp_batch = SppBatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spp_batch_params
      params.require(:spp_batch).permit(:start_at, :end_at)
    end
end
