class Route < ActiveRecord::Base
  belongs_to :driver
  %i/advance_cents reimbursement_cents gross_revenue_cents net_revenue_cents trailer_rental_cents/.each do |column|
    monetize column, with_currency: :USD
  end

  def attributes_to_display
    attrs = {}
    %w/trip_number date advance reimbursement gross_revenue net_revenue trailer_rented trailer_rental/.each do |att|
      attrs[att] = self.send att
    end
    attrs

    # Blacklisting
    # cents to money
    # attrs = attributes.
    #   except(*%w/id created_at updated_at/)
    # monies = []
    # attrs.each do |key,val| 
    #   if att = key[/(.+)_cents/,1]
    #     monies << att 
    #   end
    # end
    # monies.each{|att| attrs[att] = self.send att}
    # attrs.reject! do |key,val| 
    #   key.include? '_cents' or key.include? '_currency'
    # end
  end

  def trailer_rented_str
    trailer_rented? ? 'Yes' : 'No'
  end
end
