class SppInvoicesController < ApplicationController
  before_action :set_spp_invoice, only: %i[ show edit update destroy ]

  # GET /spp_invoices or /spp_invoices.json
  def index
    @spp_invoices = SppInvoice.all
  end

  # GET /spp_invoices/1 or /spp_invoices/1.json
  def show
  end

  # GET /spp_invoices/new
  def new
    @spp_invoice = SppInvoice.new
  end

  # GET /spp_invoices/1/edit
  def edit
  end

  # POST /spp_invoices or /spp_invoices.json
  def create
    @spp_invoice = SppInvoice.new(spp_invoice_params)

    respond_to do |format|
      if @spp_invoice.save
        format.html { redirect_to spp_invoice_url(@spp_invoice), notice: "Spp invoice was successfully created." }
        format.json { render :show, status: :created, location: @spp_invoice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spp_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spp_invoices/1 or /spp_invoices/1.json
  def update
    respond_to do |format|
      if @spp_invoice.update(spp_invoice_params)
        format.html { redirect_to spp_invoice_url(@spp_invoice), notice: "Spp invoice was successfully updated." }
        format.json { render :show, status: :ok, location: @spp_invoice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spp_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spp_invoices/1 or /spp_invoices/1.json
  def destroy
    @spp_invoice.destroy!

    respond_to do |format|
      format.html { redirect_to spp_invoices_url, notice: "Spp invoice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spp_invoice
      @spp_invoice = SppInvoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spp_invoice_params
      params.require(:spp_invoice).permit(:student_id, :category_id, :amount, :paid_amount, :status)
    end
end
