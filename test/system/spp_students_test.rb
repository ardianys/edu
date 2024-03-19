require "application_system_test_case"

class SppStudentsTest < ApplicationSystemTestCase
  setup do
    @spp_student = spp_students(:one)
  end

  test "visiting the index" do
    visit spp_students_url
    assert_selector "h1", text: "SPP students"
  end

  test "should create spp student" do
    visit spp_students_url
    click_on "New spp student"

    fill_in "Address", with: @spp_student.address
    fill_in "Birth at", with: @spp_student.birth_at
    fill_in "Email", with: @spp_student.email
    fill_in "Father", with: @spp_student.father
    fill_in "Gender", with: @spp_student.gender
    fill_in "Mother", with: @spp_student.mother
    fill_in "Name", with: @spp_student.name
    fill_in "Nis", with: @spp_student.nis
    fill_in "Phone", with: @spp_student.phone
    fill_in "Pict", with: @spp_student.pict
    fill_in "SPP batch", with: @spp_student.spp_batch_id
    click_on "Create SPP student"

    assert_text "SPP student was successfully created"
    click_on "Back"
  end

  test "should update SPP student" do
    visit spp_student_url(@spp_student)
    click_on "Edit this spp student", match: :first

    fill_in "Address", with: @spp_student.address
    fill_in "Birth at", with: @spp_student.birth_at
    fill_in "Email", with: @spp_student.email
    fill_in "Father", with: @spp_student.father
    fill_in "Gender", with: @spp_student.gender
    fill_in "Mother", with: @spp_student.mother
    fill_in "Name", with: @spp_student.name
    fill_in "Nis", with: @spp_student.nis
    fill_in "Phone", with: @spp_student.phone
    fill_in "Pict", with: @spp_student.pict
    fill_in "SPP batch", with: @spp_student.spp_batch_id
    click_on "Update SPP student"

    assert_text "SPP student was successfully updated"
    click_on "Back"
  end

  test "should destroy SPP student" do
    visit spp_student_url(@spp_student)
    click_on "Destroy this spp student", match: :first

    assert_text "SPP student was successfully destroyed"
  end
end
