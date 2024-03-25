class SppStudent < ApplicationRecord
  belongs_to :spp_batch
  has_many :spp_payments
  has_many :spp_invoices
end
