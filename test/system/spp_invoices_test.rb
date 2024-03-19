require "application_system_test_case"

class SppInvoicesTest < ApplicationSystemTestCase
  setup do
    @spp_invoice = spp_invoices(:one)
  end

  test "visiting the index" do
    visit spp_invoices_url
    assert_selector "h1", text: "SPP invoices"
  end

  test "should create spp invoice" do
    visit spp_invoices_url
    click_on "New spp invoice"

    fill_in "Amount", with: @spp_invoice.amount
    fill_in "Paid amount", with: @spp_invoice.paid_amount
    fill_in "SPP category", with: @spp_invoice.spp_category_id
    fill_in "SPP student", with: @spp_invoice.spp_student_id
    fill_in "Status", with: @spp_invoice.status
    click_on "Create SPP invoice"

    assert_text "SPP invoice was successfully created"
    click_on "Back"
  end

  test "should update SPP invoice" do
    visit spp_invoice_url(@spp_invoice)
    click_on "Edit this spp invoice", match: :first

    fill_in "Amount", with: @spp_invoice.amount
    fill_in "Paid amount", with: @spp_invoice.paid_amount
    fill_in "SPP category", with: @spp_invoice.spp_category_id
    fill_in "SPP student", with: @spp_invoice.spp_student_id
    fill_in "Status", with: @spp_invoice.status
    click_on "Update SPP invoice"

    assert_text "SPP invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy SPP invoice" do
    visit spp_invoice_url(@spp_invoice)
    click_on "Destroy this spp invoice", match: :first

    assert_text "SPP invoice was successfully destroyed"
  end
end
