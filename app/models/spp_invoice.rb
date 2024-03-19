class SppInvoice < ApplicationRecord
  belongs_to :spp_student
  belongs_to :spp_category
end
