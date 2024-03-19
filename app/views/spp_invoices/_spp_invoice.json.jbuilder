json.extract! spp_invoice, :id, :spp_student_id, :spp_category_id, :amount, :paid_amount, :status, :created_at, :updated_at
json.url spp_invoice_url(spp_invoice, format: :json)
