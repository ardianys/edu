json.extract! donation, :id, :campaign_id, :amount, :name, :email, :telephone, :anonymous, :payment_type, :dua, :created_at, :updated_at
json.url donation_url(donation, format: :json)
