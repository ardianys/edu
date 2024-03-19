json.extract! spp_invoice, :id, :student_id, :category_id, :amount, :paid_amount, :status, :created_at, :updated_at
json.url spp_invoice_url(spp_invoice, format: :json)
