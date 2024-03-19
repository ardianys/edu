json.extract! spp_payment, :id, :spp_batch_id, :user_id, :spp_student_id, :spp_invoice_id, :tipe, :amount, :pay_at, :created_at, :updated_at
json.url spp_payment_url(spp_payment, format: :json)
