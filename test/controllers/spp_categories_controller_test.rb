require "test_helper"

class SppCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spp_category = spp_categories(:one)
  end

  test "should get index" do
    get spp_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_spp_category_url
    assert_response :success
  end

  test "should create spp_category" do
    assert_difference("SppCategory.count") do
      post spp_categories_url, params: { spp_category: { title: @spp_category.title } }
    end

    assert_redirected_to spp_category_url(SppCategory.last)
  end

  test "should show spp_category" do
    get spp_category_url(@spp_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_spp_category_url(@spp_category)
    assert_response :success
  end

  test "should update spp_category" do
    patch spp_category_url(@spp_category), params: { spp_category: { title: @spp_category.title } }
    assert_redirected_to spp_category_url(@spp_category)
  end

  test "should destroy spp_category" do
    assert_difference("SppCategory.count", -1) do
      delete spp_category_url(@spp_category)
    end

    assert_redirected_to spp_categories_url
  end
end
