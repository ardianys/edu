class SppPayment < ApplicationRecord
  belongs_to :spp_batch
  belongs_to :user
  belongs_to :spp_student
  belongs_to :spp_invoice
end
