require "application_system_test_case"

class SppBatchesTest < ApplicationSystemTestCase
  setup do
    @spp_batch = spp_batches(:one)
  end

  test "visiting the index" do
    visit spp_batches_url
    assert_selector "h1", text: "SPP batches"
  end

  test "should create spp batch" do
    visit spp_batches_url
    click_on "New spp batch"

    fill_in "End at", with: @spp_batch.end_at
    fill_in "Start at", with: @spp_batch.start_at
    click_on "Create SPP batch"

    assert_text "SPP batch was successfully created"
    click_on "Back"
  end

  test "should update SPP batch" do
    visit spp_batch_url(@spp_batch)
    click_on "Edit this spp batch", match: :first

    fill_in "End at", with: @spp_batch.end_at
    fill_in "Start at", with: @spp_batch.start_at
    click_on "Update SPP batch"

    assert_text "SPP batch was successfully updated"
    click_on "Back"
  end

  test "should destroy SPP batch" do
    visit spp_batch_url(@spp_batch)
    click_on "Destroy this spp batch", match: :first

    assert_text "SPP batch was successfully destroyed"
  end
end
