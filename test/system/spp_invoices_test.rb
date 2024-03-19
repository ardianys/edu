require "application_system_test_case"

class SppInvoicesTest < ApplicationSystemTestCase
  setup do
    @spp_invoice = spp_invoices(:one)
  end

  test "visiting the index" do
    visit spp_invoices_url
    assert_selector "h1", text: "Spp invoices"
  end

  test "should create spp invoice" do
    visit spp_invoices_url
    click_on "New spp invoice"

    fill_in "Amount", with: @spp_invoice.amount
    fill_in "Category", with: @spp_invoice.category_id
    fill_in "Paid amount", with: @spp_invoice.paid_amount
    fill_in "Status", with: @spp_invoice.status
    fill_in "Student", with: @spp_invoice.student_id
    click_on "Create Spp invoice"

    assert_text "Spp invoice was successfully created"
    click_on "Back"
  end

  test "should update Spp invoice" do
    visit spp_invoice_url(@spp_invoice)
    click_on "Edit this spp invoice", match: :first

    fill_in "Amount", with: @spp_invoice.amount
    fill_in "Category", with: @spp_invoice.category_id
    fill_in "Paid amount", with: @spp_invoice.paid_amount
    fill_in "Status", with: @spp_invoice.status
    fill_in "Student", with: @spp_invoice.student_id
    click_on "Update Spp invoice"

    assert_text "Spp invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy Spp invoice" do
    visit spp_invoice_url(@spp_invoice)
    click_on "Destroy this spp invoice", match: :first

    assert_text "Spp invoice was successfully destroyed"
  end
end
