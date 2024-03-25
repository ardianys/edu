module ApplicationHelper
  def idr v
    number_to_currency( v.to_i, unit: "Rp", precision: 0, separator: ",", delimiter: ".", format: "%u%n,-")
  end
end
