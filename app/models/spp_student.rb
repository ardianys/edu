class SppStudent < ApplicationRecord
  belongs_to :spp_batch
  has_many :spp_payments
  has_many :spp_invoices

  mount_uploader :pict, ImageUploader

  after_create :create_spp_invoices

  def create_spp_invoices
    spp_category = SppCategory.find_or_create_by(title: "SPP")

    spp_invoice = SppInvoice.create(
      spp_student_id: id,
      spp_category_id: spp_category.id,
      amount: 12_000_000,
      paid_amount: 0,
      status: "NEW",
    )

    # Create SPP Payments for the next 12 months
    (0..11).each do |i|
      due_date = spp_batch.start_at + i.months
      SppPayment.create!(
        spp_batch_id: spp_batch_id,
        spp_student_id: id,
        spp_invoice_id: spp_invoice.id,
        amount: 1_000_000,
        # user_id diambil dari user yg login
        # tipe : harus dimasukkan manual oleh bendahara
        # pay_at : harus dimasukkan manual oleh bendahara
      )
    end
  end
end
