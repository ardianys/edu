require "test_helper"

class SppPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spp_payment = spp_payments(:one)
  end

  test "should get index" do
    get spp_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_spp_payment_url
    assert_response :success
  end

  test "should create spp_payment" do
    assert_difference("SppPayment.count") do
      post spp_payments_url, params: { spp_payment: { amount: @spp_payment.amount, pay_at: @spp_payment.pay_at, spp_batch_id: @spp_payment.spp_batch_id, spp_invoice_id: @spp_payment.spp_invoice_id, spp_student_id: @spp_payment.spp_student_id, tipe: @spp_payment.tipe, user_id: @spp_payment.user_id } }
    end

    assert_redirected_to spp_payment_url(SppPayment.last)
  end

  test "should show spp_payment" do
    get spp_payment_url(@spp_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_spp_payment_url(@spp_payment)
    assert_response :success
  end

  test "should update spp_payment" do
    patch spp_payment_url(@spp_payment), params: { spp_payment: { amount: @spp_payment.amount, pay_at: @spp_payment.pay_at, spp_batch_id: @spp_payment.spp_batch_id, spp_invoice_id: @spp_payment.spp_invoice_id, spp_student_id: @spp_payment.spp_student_id, tipe: @spp_payment.tipe, user_id: @spp_payment.user_id } }
    assert_redirected_to spp_payment_url(@spp_payment)
  end

  test "should destroy spp_payment" do
    assert_difference("SppPayment.count", -1) do
      delete spp_payment_url(@spp_payment)
    end

    assert_redirected_to spp_payments_url
  end
end
