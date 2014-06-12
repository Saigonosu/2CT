class Route < ActiveRecord::Base
  belongs_to :driver
  %i/advance_cents reimbursement_cents gross_revenue_cents net_revenue_cents trailer_rental_cents/.each do |column|
    monetize column
  end

  def trailer_rented_str
    trailer_rented? ? 'Yes' : 'No'
  end
end
