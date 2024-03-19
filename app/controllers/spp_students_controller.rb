class SppStudentsController < ApplicationController
  before_action :set_spp_student, only: %i[ show edit update destroy ]

  # GET /spp_students or /spp_students.json
  def index
    @spp_students = SppStudent.all
  end

  # GET /spp_students/1 or /spp_students/1.json
  def show
  end

  # GET /spp_students/new
  def new
    @spp_student = SppStudent.new
  end

  # GET /spp_students/1/edit
  def edit
  end

  # POST /spp_students or /spp_students.json
  def create
    @spp_student = SppStudent.new(spp_student_params)

    respond_to do |format|
      if @spp_student.save
        format.html { redirect_to spp_student_url(@spp_student), notice: "SPP student was successfully created." }
        format.json { render :show, status: :created, location: @spp_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spp_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spp_students/1 or /spp_students/1.json
  def update
    respond_to do |format|
      if @spp_student.update(spp_student_params)
        format.html { redirect_to spp_student_url(@spp_student), notice: "SPP student was successfully updated." }
        format.json { render :show, status: :ok, location: @spp_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spp_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spp_students/1 or /spp_students/1.json
  def destroy
    @spp_student.destroy!

    respond_to do |format|
      format.html { redirect_to spp_students_url, notice: "SPP student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spp_student
      @spp_student = SppStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spp_student_params
      params.require(:spp_student).permit(:spp_batch_id, :nis, :name, :gender, :birth_at, :address, :pict, :father, :mother, :phone, :email)
    end
end
