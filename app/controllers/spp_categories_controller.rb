class SppCategoriesController < ApplicationController
  before_action :set_spp_category, only: %i[ show edit update destroy ]

  # GET /spp_categories or /spp_categories.json
  def index
    @spp_categories = SppCategory.all
  end

  # GET /spp_categories/1 or /spp_categories/1.json
  def show
  end

  # GET /spp_categories/new
  def new
    @spp_category = SppCategory.new
  end

  # GET /spp_categories/1/edit
  def edit
  end

  # POST /spp_categories or /spp_categories.json
  def create
    @spp_category = SppCategory.new(spp_category_params)

    respond_to do |format|
      if @spp_category.save
        format.html { redirect_to spp_category_url(@spp_category), notice: "Spp category was successfully created." }
        format.json { render :show, status: :created, location: @spp_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spp_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spp_categories/1 or /spp_categories/1.json
  def update
    respond_to do |format|
      if @spp_category.update(spp_category_params)
        format.html { redirect_to spp_category_url(@spp_category), notice: "Spp category was successfully updated." }
        format.json { render :show, status: :ok, location: @spp_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spp_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spp_categories/1 or /spp_categories/1.json
  def destroy
    @spp_category.destroy!

    respond_to do |format|
      format.html { redirect_to spp_categories_url, notice: "Spp category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spp_category
      @spp_category = SppCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spp_category_params
      params.require(:spp_category).permit(:title)
    end
end
