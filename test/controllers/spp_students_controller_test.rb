require "test_helper"

class SppStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spp_student = spp_students(:one)
  end

  test "should get index" do
    get spp_students_url
    assert_response :success
  end

  test "should get new" do
    get new_spp_student_url
    assert_response :success
  end

  test "should create spp_student" do
    assert_difference("SppStudent.count") do
      post spp_students_url, params: { spp_student: { address: @spp_student.address, birth_at: @spp_student.birth_at, email: @spp_student.email, father: @spp_student.father, gender: @spp_student.gender, mother: @spp_student.mother, name: @spp_student.name, nis: @spp_student.nis, phone: @spp_student.phone, pict: @spp_student.pict, spp_batch_id: @spp_student.spp_batch_id } }
    end

    assert_redirected_to spp_student_url(SppStudent.last)
  end

  test "should show spp_student" do
    get spp_student_url(@spp_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_spp_student_url(@spp_student)
    assert_response :success
  end

  test "should update spp_student" do
    patch spp_student_url(@spp_student), params: { spp_student: { address: @spp_student.address, birth_at: @spp_student.birth_at, email: @spp_student.email, father: @spp_student.father, gender: @spp_student.gender, mother: @spp_student.mother, name: @spp_student.name, nis: @spp_student.nis, phone: @spp_student.phone, pict: @spp_student.pict, spp_batch_id: @spp_student.spp_batch_id } }
    assert_redirected_to spp_student_url(@spp_student)
  end

  test "should destroy spp_student" do
    assert_difference("SppStudent.count", -1) do
      delete spp_student_url(@spp_student)
    end

    assert_redirected_to spp_students_url
  end
end
