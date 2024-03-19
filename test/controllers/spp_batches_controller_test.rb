require "test_helper"

class SppBatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spp_batch = spp_batches(:one)
  end

  test "should get index" do
    get spp_batches_url
    assert_response :success
  end

  test "should get new" do
    get new_spp_batch_url
    assert_response :success
  end

  test "should create spp_batch" do
    assert_difference("SppBatch.count") do
      post spp_batches_url, params: { spp_batch: { end_at: @spp_batch.end_at, start_at: @spp_batch.start_at } }
    end

    assert_redirected_to spp_batch_url(SppBatch.last)
  end

  test "should show spp_batch" do
    get spp_batch_url(@spp_batch)
    assert_response :success
  end

  test "should get edit" do
    get edit_spp_batch_url(@spp_batch)
    assert_response :success
  end

  test "should update spp_batch" do
    patch spp_batch_url(@spp_batch), params: { spp_batch: { end_at: @spp_batch.end_at, start_at: @spp_batch.start_at } }
    assert_redirected_to spp_batch_url(@spp_batch)
  end

  test "should destroy spp_batch" do
    assert_difference("SppBatch.count", -1) do
      delete spp_batch_url(@spp_batch)
    end

    assert_redirected_to spp_batches_url
  end
end
