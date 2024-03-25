class SppPaymentsController < ApplicationController
  before_action :set_spp_payment, only: %i[ show edit update destroy ]

  # GET /spp_payments or /spp_payments.json
  def index
    @spp_payments = SppPayment.paginate(page: params[:page])
  end

  # GET /spp_payments/1 or /spp_payments/1.json
  def show
  end

  # GET /spp_payments/new
  def new
    @spp_payment = SppPayment.new
  end

  # GET /spp_payments/1/edit
  def edit
  end

  # POST /spp_payments or /spp_payments.json
  def create
    @spp_payment = SppPayment.new(spp_payment_params)

    respond_to do |format|
      if @spp_payment.save
        format.html { redirect_to spp_payment_url(@spp_payment), notice: "SPP payment was successfully created." }
        format.json { render :show, status: :created, location: @spp_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spp_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spp_payments/1 or /spp_payments/1.json
  def update
    respond_to do |format|
      if @spp_payment.update(spp_payment_params)
        format.html { redirect_to spp_payment_url(@spp_payment), notice: "SPP payment was successfully updated." }
        format.json { render :show, status: :ok, location: @spp_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spp_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spp_payments/1 or /spp_payments/1.json
  def destroy
    @spp_payment.destroy!

    respond_to do |format|
      format.html { redirect_to spp_payments_url, notice: "SPP payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spp_payment
      @spp_payment = SppPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spp_payment_params
      params.require(:spp_payment).permit(:spp_batch_id, :user_id, :spp_student_id, :spp_invoice_id, :tipe, :amount, :pay_at)
    end
end
