require "test_helper"

class SppInvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spp_invoice = spp_invoices(:one)
  end

  test "should get index" do
    get spp_invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_spp_invoice_url
    assert_response :success
  end

  test "should create spp_invoice" do
    assert_difference("SppInvoice.count") do
      post spp_invoices_url, params: { spp_invoice: { amount: @spp_invoice.amount, paid_amount: @spp_invoice.paid_amount, spp_category_id: @spp_invoice.spp_category_id, spp_student_id: @spp_invoice.spp_student_id, status: @spp_invoice.status } }
    end

    assert_redirected_to spp_invoice_url(SppInvoice.last)
  end

  test "should show spp_invoice" do
    get spp_invoice_url(@spp_invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_spp_invoice_url(@spp_invoice)
    assert_response :success
  end

  test "should update spp_invoice" do
    patch spp_invoice_url(@spp_invoice), params: { spp_invoice: { amount: @spp_invoice.amount, paid_amount: @spp_invoice.paid_amount, spp_category_id: @spp_invoice.spp_category_id, spp_student_id: @spp_invoice.spp_student_id, status: @spp_invoice.status } }
    assert_redirected_to spp_invoice_url(@spp_invoice)
  end

  test "should destroy spp_invoice" do
    assert_difference("SppInvoice.count", -1) do
      delete spp_invoice_url(@spp_invoice)
    end

    assert_redirected_to spp_invoices_url
  end
end
