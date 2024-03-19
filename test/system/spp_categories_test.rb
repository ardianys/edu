require "application_system_test_case"

class SppCategoriesTest < ApplicationSystemTestCase
  setup do
    @spp_category = spp_categories(:one)
  end

  test "visiting the index" do
    visit spp_categories_url
    assert_selector "h1", text: "SPP categories"
  end

  test "should create spp category" do
    visit spp_categories_url
    click_on "New spp category"

    fill_in "Title", with: @spp_category.title
    click_on "Create SPP category"

    assert_text "SPP category was successfully created"
    click_on "Back"
  end

  test "should update SPP category" do
    visit spp_category_url(@spp_category)
    click_on "Edit this spp category", match: :first

    fill_in "Title", with: @spp_category.title
    click_on "Update SPP category"

    assert_text "SPP category was successfully updated"
    click_on "Back"
  end

  test "should destroy SPP category" do
    visit spp_category_url(@spp_category)
    click_on "Destroy this spp category", match: :first

    assert_text "SPP category was successfully destroyed"
  end
end
